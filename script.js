// Add flag at the top of the file
const SHOW_AMMUNITION = false;

// Navigation
document.querySelectorAll('.nav-btn').forEach(button => {
    button.addEventListener('click', () => {
        // Remove active class from all buttons
        document.querySelectorAll('.nav-btn').forEach(btn => btn.classList.remove('active'));
        // Add active class to clicked button
        button.classList.add('active');
        
        // Hide all sections
        document.querySelectorAll('.data-section').forEach(section => {
            section.style.display = 'none';
        });
        
        // Show selected section
        const sectionId = button.getAttribute('data-section');
        document.getElementById(sectionId).style.display = 'block';
    });
});

// Show ships section by default
document.querySelector('[data-section="ships"]').click();

// Populate ships data
function populateShipsData() {
    const shipsContent = document.getElementById('ships-data');
    if (!shipsContent) return;
    shipsContent.innerHTML = ''; // Clear existing content

    Object.entries(gameData.ships).forEach(([shipName, shipData]) => {
        const shipCard = document.createElement('div');
        shipCard.className = 'ship-card';
        
        const shipHeader = document.createElement('div');
        shipHeader.className = 'ship-header';
        shipHeader.innerHTML = `
            <div class="ship-name">${shipName}</div>
            <div class="ship-npc-name">NPC Name: ${shipData.NPCName || 'N/A'}</div>
        `;

        const shipStats = document.createElement('div');
        shipStats.className = 'ship-stats';

        const stats = [
            { label: 'Price', value: `${shipData.Price} Gold` },
            { label: 'Hull Health', value: shipData.Health },
            { label: 'Sail Health', value: shipData.SailHealth },
            { label: 'Cargo Hold', value: shipData.CargoHold },
            { label: 'Max Players', value: shipData.MaxPlayers },
            { label: 'Side Cannons', value: shipData.Cannons },
            { label: 'Cannon Range', value: `${shipData.CannonMinDistance} - ${shipData.CannonMaxDistance}` }
        ];

        stats.forEach(stat => {
            const statDiv = document.createElement('div');
            statDiv.className = 'ship-stat';
            statDiv.innerHTML = `
                <span class="stat-label">${stat.label}:</span>
                <span class="stat-value">${stat.value}</span>
            `;
            shipStats.appendChild(statDiv);
        });

        shipCard.appendChild(shipHeader);
        shipCard.appendChild(shipStats);
        shipsContent.appendChild(shipCard);
    });
}

// Populate skills data
function populateSkillsData() {
    Object.entries(gameData.skills).forEach(([skillName, skillData]) => {
        const skillCategory = document.querySelector(`.skill-category[data-skill="${skillName}"]`);
        if (!skillCategory) return;

        // Populate passives
        const passivesContent = skillCategory.querySelector('.passives-content');
        passivesContent.innerHTML = '';
        skillData.Passives.forEach(passive => {
            const passiveItem = document.createElement('div');
            passiveItem.className = 'skill-item';
            passiveItem.innerHTML = `
                <div class="skill-name">${passive.Name}</div>
                <div class="skill-description">${passive.Description}</div>
                <div class="skill-level">Required Level: ${passive.Level}</div>
                <div class="skill-bonus">Bonus per Point: ${passive.BonusPerPoint}</div>
            `;
            passivesContent.appendChild(passiveItem);
        });

        // Populate actions
        const actionsContent = skillCategory.querySelector('.actions-content');
        actionsContent.innerHTML = '';
        skillData.Actions.forEach(action => {
            const actionItem = document.createElement('div');
            actionItem.className = 'skill-item';
            actionItem.innerHTML = `
                <div class="skill-name">${action.Description}</div>
                <div class="skill-description">${action.Text || ''}</div>
                <div class="skill-level">Required Level: ${action.Level}</div>
                <div class="skill-bonus">Bonus per Point: ${action.BonusPerPoint}${action.BonusType}</div>
            `;
            actionsContent.appendChild(actionItem);
        });
    });
}

// Populate quests data
function populateQuestsData() {
    const questsSection = document.getElementById('quests-data');
    if (!questsSection) return;

    questsSection.innerHTML = '';

    // Group quests by type
    const questsByType = {};
    Object.entries(gameData.quests).forEach(([id, quest]) => {
        if (!questsByType[quest.type]) {
            questsByType[quest.type] = [];
        }
        questsByType[quest.type].push({ id, ...quest });
    });

    // Create sections for each quest type
    Object.entries(questsByType).forEach(([type, quests]) => {
        const typeSection = document.createElement('div');
        typeSection.className = 'quest-type-section';

        const typeHeader = document.createElement('h3');
        typeHeader.textContent = type;
        typeSection.appendChild(typeHeader);

        const questsList = document.createElement('div');
        questsList.className = 'quests-list';

        quests.forEach(quest => {
            const questCard = document.createElement('div');
            questCard.className = 'data-item';

            const questName = document.createElement('h4');
            questName.textContent = quest.name;
            questCard.appendChild(questName);

            const questDescription = document.createElement('p');
            questDescription.textContent = quest.description;
            questCard.appendChild(questDescription);

            // Only show NPC for non-treasure map quests
            if (quest.type !== 'TreasureMap' && quest.startNPC) {
                const questNPC = document.createElement('p');
                questNPC.innerHTML = `<span class="property-name">Start NPC:</span> <span class="property-value">${quest.startNPC}</span>`;
                questCard.appendChild(questNPC);
            }

            questsList.appendChild(questCard);
        });

        typeSection.appendChild(questsList);
        questsSection.appendChild(typeSection);
    });
}

// Populate NPCs data
function populateNPCsData() {
    const npcsSection = document.getElementById('npcs-data');
    if (!npcsSection) return;

    npcsSection.innerHTML = '';

    const npcsList = document.createElement('div');
    npcsList.className = 'npcs-list';

    gameData.npcs.forEach(npc => {
        const npcCard = document.createElement('div');
        npcCard.className = 'data-item';

        const npcName = document.createElement('h4');
        npcName.textContent = npc.name;
        npcCard.appendChild(npcName);

        if (npc.dailyQuest) {
            const questInfo = gameData.quests[npc.dailyQuest];
            const dailyQuest = document.createElement('p');
            dailyQuest.innerHTML = `<span class="property-name">Daily Quest:</span> <span class="property-value">${questInfo.name}</span>`;
            npcCard.appendChild(dailyQuest);
        }

        npcsList.appendChild(npcCard);
    });

    npcsSection.appendChild(npcsList);
}

// Populate gameplay data
function populateGameplayData() {
    populateEnemiesData();
    if (SHOW_AMMUNITION) {
        populateAmmunitionData();
    }
    populateItemsData();
}

function populateEnemiesData() {
    const enemiesGrid = document.getElementById('enemies-data');
    if (!enemiesGrid) return;

    Object.entries(gameData.gameplay.enemies).forEach(([enemyName, enemyData]) => {
        const enemyCard = document.createElement('div');
        enemyCard.className = 'data-item';

        const enemyTitle = document.createElement('h4');
        enemyTitle.textContent = enemyData.displayName || enemyName;
        enemyCard.appendChild(enemyTitle);

        const stats = [
            { label: 'Level', value: enemyData.level },
            { label: 'Health', value: enemyData.health },
            { label: 'Damage', value: enemyData.damage },
            { label: 'Speed', value: enemyData.speed },
            { label: 'Description', value: enemyData.description }
        ];

        stats.forEach(stat => {
            if (stat.value) {
                const property = document.createElement('div');
                property.className = 'property';
                property.innerHTML = `
                    <span class="property-name">${stat.label}:</span>
                    <span class="property-value">${stat.value}</span>
                `;
                enemyCard.appendChild(property);
            }
        });

        if (enemyData.drops && enemyData.drops.length > 0) {
            const dropsProperty = document.createElement('div');
            dropsProperty.className = 'property';
            dropsProperty.innerHTML = `
                <span class="property-name">Drops:</span>
                <span class="property-value">${enemyData.drops.join(', ')}</span>
            `;
            enemyCard.appendChild(dropsProperty);
        }

        enemiesGrid.appendChild(enemyCard);
    });
}

function populateAmmunitionData() {
    const bulletsSection = document.getElementById('bullets-data');
    const cannonballsSection = document.getElementById('cannonballs-data');
    const ammunitionSection = document.querySelector('.ammunition-section');

    if (ammunitionSection) {
        ammunitionSection.style.display = SHOW_AMMUNITION ? 'block' : 'none';
    }
    
    if (!SHOW_AMMUNITION) return;

    if (bulletsSection) {
        populateBulletsData();
    }
    if (cannonballsSection) {
        populateCannonballsData();
    }
}

function populateBulletsData() {
    const bulletsGrid = document.getElementById('bullets-data');
    if (!bulletsGrid) return;

    Object.entries(gameData.gameplay.bullets).forEach(([bulletName, bulletData]) => {
        const bulletCard = document.createElement('div');
        bulletCard.className = 'data-item';
        bulletCard.dataset.rarity = bulletData.rarity;

        const bulletTitle = document.createElement('h4');
        bulletTitle.textContent = bulletName;
        bulletTitle.className = `rarity-${bulletData.rarity}`;
        bulletCard.appendChild(bulletTitle);

        const stats = [
            { label: 'Damage', value: bulletData.damage },
            { label: 'Rarity', value: bulletData.rarity },
            { label: 'Price', value: bulletData.price ? `${bulletData.price} Gold` : 'Free' },
            { label: 'Description', value: bulletData.description }
        ];

        stats.forEach(stat => {
            if (stat.value) {
                const property = document.createElement('div');
                property.className = 'property';
                property.innerHTML = `
                    <span class="property-name">${stat.label}:</span>
                    <span class="property-value">${stat.value}</span>
                `;
                bulletCard.appendChild(property);
            }
        });

        bulletsGrid.appendChild(bulletCard);
    });
}

function populateItemsData() {
    // Clear all item grids
    const grids = ['swords-data', 'guns-data', 'keys-data', 'chests-data'];
    grids.forEach(gridId => {
        const grid = document.getElementById(gridId);
        if (grid) grid.innerHTML = '';
    });

    // Populate Swords
    const swordsGrid = document.getElementById('swords-data');
    // console.log('Swords grid element:', swordsGrid);
    // console.log('Swords data:', gameData.gameplay?.items?.weapons?.swords);
    
    if (swordsGrid && gameData.gameplay?.items?.weapons?.swords) {
        Object.entries(gameData.gameplay.items.weapons.swords).forEach(([name, data]) => {
            // console.log('Creating sword card for:', name, data);
            const itemCard = createItemCard(name, {
                ...data,
                type: 'Sword',
                stats: [
                    { label: 'Damage', value: data.Damage || data.damage },
                    { label: 'Level Required', value: data.Level || data.level },
                    { label: 'Sell Price', value: `${data.SellPrice || data.sellPrice} Gold` },
                    { label: 'Rarity', value: data.Rarity || data.rarity },
                    { label: 'Description', value: data.Description || data.description }
                ].filter(stat => stat.value !== undefined)
            });
            swordsGrid.appendChild(itemCard);
        });
    } else {
        // console.log('Missing swords grid or data:', {
        //     gridExists: !!swordsGrid,
        //     dataExists: !!gameData.gameplay?.items?.weapons?.swords
        // });
    }

    // Populate Guns
    const gunsGrid = document.getElementById('guns-data');
    if (gunsGrid && gameData.gameplay && gameData.gameplay.items && gameData.gameplay.items.weapons && gameData.gameplay.items.weapons.guns) {
        Object.entries(gameData.gameplay.items.weapons.guns).forEach(([name, data]) => {
            const itemCard = createItemCard(name, {
                ...data,
                type: 'Gun',
                stats: [
                    { label: 'Damage', value: data.damage },
                    { label: 'Range', value: data.range },
                    { label: 'Rarity', value: data.rarity },
                    data.spread ? { label: 'Spread', value: 'Yes' } : null
                ].filter(Boolean)
            });
            gunsGrid.appendChild(itemCard);
        });
    }

    // Populate Keys
    const keysGrid = document.getElementById('keys-data');
    if (keysGrid && gameData.gameplay && gameData.gameplay.items && gameData.gameplay.items.keys) {
        Object.entries(gameData.gameplay.items.keys).forEach(([name, data]) => {
            const itemCard = createItemCard(name, {
                ...data,
                type: 'Key',
                stats: [
                    { label: 'Rarity', value: data.rarity },
                    { label: 'Opens', value: data.chestType }
                ]
            });
            keysGrid.appendChild(itemCard);
        });
    }

    // Populate Chests
    const chestsGrid = document.getElementById('chests-data');
    if (chestsGrid && gameData.gameplay && gameData.gameplay.items && gameData.gameplay.items.chests) {
        Object.entries(gameData.gameplay.items.chests).forEach(([name, data]) => {
            const itemCard = createItemCard(name, {
                ...data,
                type: 'Chest',
                stats: [
                    { label: 'Rarity', value: data.rarity },
                    { label: 'Key Type', value: data.keyType },
                ]
            });
            chestsGrid.appendChild(itemCard);
        });
    }

    // Add debug logging
    // console.log('Gameplay data structure:', gameData.gameplay);
}

function createItemCard(name, data) {
    const itemCard = document.createElement('div');
    itemCard.className = 'data-item';
    itemCard.dataset.rarity = data.rarity;
    itemCard.dataset.type = data.type;

    const title = document.createElement('h4');
    title.textContent = name;
    title.className = `rarity-${data.rarity.toLowerCase()}`;
    itemCard.appendChild(title);

    data.stats.forEach(stat => {
        if (stat && stat.value) {
            const property = document.createElement('div');
            property.className = 'property';
            property.innerHTML = `
                <span class="property-name">${stat.label}:</span>
                <span class="property-value">${stat.value}</span>
            `;
            itemCard.appendChild(property);
        }
    });

    return itemCard;
}

// Initialize data
populateShipsData();
populateSkillsData();
populateQuestsData();
populateNPCsData();
populateGameplayData();

// Collapsible sections handling
function createCollapsible(title, content) {
    const collapsible = document.createElement('button');
    collapsible.className = 'collapsible';
    collapsible.textContent = title;

    const contentDiv = document.createElement('div');
    contentDiv.className = 'collapsible-content';
    contentDiv.innerHTML = content;

    collapsible.addEventListener('click', () => {
        collapsible.classList.toggle('active');
        contentDiv.classList.toggle('active');
    });

    return { collapsible, contentDiv };
}

function formatValue(value) {
    if (typeof value === 'object') {
        if (Array.isArray(value)) {
            return value.join(', ');
        }
        return JSON.stringify(value, null, 2);
    }
    return value.toString();
}

function createDataItem(title, data) {
    const item = document.createElement('div');
    item.className = 'data-item';
    
    // Add rarity class if available
    if (data.Rarity) {
        item.dataset.rarity = data.Rarity;
    }
    
    const titleElement = document.createElement('h4');
    titleElement.textContent = title;
    if (data.Rarity) {
        titleElement.className = `rarity-${data.Rarity}`;
    }
    item.appendChild(titleElement);

    if (typeof data === 'object') {
        Object.entries(data).forEach(([key, value]) => {
            // Skip certain fields in the main display
            if (['Asset', 'OnHit'].includes(key)) return;
            
            const property = document.createElement('div');
            property.className = 'property';
            
            const name = document.createElement('span');
            name.className = 'property-name';
            name.textContent = key;
            
            const valueElement = document.createElement('span');
            valueElement.className = 'property-value';
            
            // Special formatting for nested objects
            if (typeof value === 'object' && value !== null) {
                if (Array.isArray(value)) {
                    valueElement.textContent = value.join(', ');
                } else {
                    // Create sub-properties for nested objects
                    const subProperties = document.createElement('div');
                    subProperties.className = 'sub-properties';
                    Object.entries(value).forEach(([subKey, subValue]) => {
                        const subProperty = document.createElement('div');
                        subProperty.className = 'sub-property';
                        subProperty.innerHTML = `<span class="sub-property-name">${subKey}:</span> <span class="sub-property-value">${subValue}</span>`;
                        subProperties.appendChild(subProperty);
                    });
                    valueElement.appendChild(subProperties);
                }
            } else {
                valueElement.textContent = formatValue(value);
            }
            
            property.appendChild(name);
            property.appendChild(valueElement);
            item.appendChild(property);
        });
    } else {
        const value = document.createElement('p');
        value.textContent = formatValue(data);
        item.appendChild(value);
    }

    return item;
}

// Initialize data display
function initializeData() {
    // Main data sections
    const dataMapping = {
        'ship-names-data': gameData.shipNames,
        'cannonballs-data': gameData.cannonballs,
        'bullets-data': gameData.bullets,
        'enemies-data': gameData.enemies,
        'item-types-data': gameData.itemTypes,
        'plunder-data': gameData.plunder,
        'gamepasses-data': gameData.gamepasses,
        'sounds-data': gameData.sounds,
        'icons-data': gameData.icons
    };

    // Display main data
    for (const [elementId, data] of Object.entries(dataMapping)) {
        const container = document.getElementById(elementId);
        if (!container || !data) continue;

        Object.entries(data).forEach(([key, value]) => {
            const { collapsible, contentDiv } = createCollapsible(key, '');
            const content = document.createElement('div');
            content.appendChild(createDataItem(key, value));
            contentDiv.appendChild(content);
            container.appendChild(collapsible);
            container.appendChild(contentDiv);
        });
    }
}

// Initialize the page
document.addEventListener('DOMContentLoaded', () => {
    initializeData();
    showSection('ships-section');
});

// Update the showSection function to include the new sections
function showSection(sectionId) {
    const sections = document.querySelectorAll('.data-section');
    sections.forEach(section => {
        section.classList.remove('active');
    });

    const activeSection = document.getElementById(sectionId);
    if (activeSection) {
        activeSection.classList.add('active');

        // Handle ammunition sections visibility
        const ammunitionSection = activeSection.querySelector('.ammunition-section');
        if (ammunitionSection) {
            ammunitionSection.style.display = SHOW_AMMUNITION ? 'block' : 'none';
        }
    }

    // Update active button
    const buttons = document.querySelectorAll('.nav-btn');
    buttons.forEach(button => {
        button.classList.remove('active');
        if (button.getAttribute('data-section') === sectionId) {
            button.classList.add('active');
        }
    });

    // Populate data based on section
    if (sectionId === 'ships') {
        populateShipsData();
    } else if (sectionId === 'quests') {
        populateQuestsData();
    } else if (sectionId === 'npcs') {
        populateNPCsData();
    } else if (sectionId === 'gameplay') {
        populateGameplayData();
    } else if (sectionId === 'skills') {
        populateSkillsData();
    }
}
