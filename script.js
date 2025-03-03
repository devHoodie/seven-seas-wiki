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

// Initialize data
populateShipsData();
populateSkillsData();
populateQuestsData();
populateNPCsData();

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

    // Display subdirectory data
    const subDirMapping = {
        'quests-data': questsData,
        'npcs-data': npcsData,
        'loot-data': lootData,
        'items-data': itemsData,
        'sword-skills-data': swordSkillsData
    };

    for (const [elementId, data] of Object.entries(subDirMapping)) {
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
document.addEventListener('DOMContentLoaded', initializeData);

// Update the showSection function to include the new sections
function showSection(sectionId) {
    const sections = document.querySelectorAll('.data-section');
    sections.forEach(section => {
        section.classList.remove('active');
    });

    const activeSection = document.getElementById(sectionId);
    if (activeSection) {
        activeSection.classList.add('active');
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
    if (sectionId === 'ships-section') {
        populateShipsData();
    } else if (sectionId === 'quests-section') {
        populateQuestsData();
    } else if (sectionId === 'npcs-section') {
        populateNPCsData();
    }
}

// Call showSection('ships-section') when the page loads
document.addEventListener('DOMContentLoaded', () => {
    showSection('ships-section');
});
