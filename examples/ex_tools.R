
#initialize a basic chat w/o tools
chat <- initialize_chat()

# register tools using pre-defined tool_() functions
register_tools(chat, list(tool_current_time(), tool_geocode_location(), tool_get_weather()))

# chat with tools
chat$chat("What is the current time?")
chat$chat("What is the weather in Atlanta?")
