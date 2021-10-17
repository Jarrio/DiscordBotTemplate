package discord_api_types;

typedef GatewaySendPayload = ts.AnyOf6<GatewayHeartbeat, GatewayIdentify, GatewayUpdatePresence, GatewayVoiceStateUpdate, GatewayResume, GatewayRequestGuildMembers>;