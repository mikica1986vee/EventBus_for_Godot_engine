const EVENT_TYPE_ID = 1 #for example, PLAYER_EVENT, AI_EVENT, whatever

const SIMPLE_EVENT_A = 1 + EVENT_TYPE_ID << 16 #concrete event, PLAYER_PICKED_WEAPON
const SIMPLE_EVENT_B = 2 + EVENT_TYPE_ID << 16
const SIMPLE_EVENT_C = 3 + EVENT_TYPE_ID << 16