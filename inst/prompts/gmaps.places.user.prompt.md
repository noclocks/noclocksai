<!-- Google Maps Places Search Prompt Template -->

<purpose>
Places Search
</purpose>

<format>
Table
</format>

<detail>
Detailed
</detail>

Please search the Google Maps Places API using the following query: {{query}}.

Abide by the following search parameters (if provided):

{{#has_location}}
Search around the location: {{location}}.
{{/has_location}}

{{#has_radius}}
Search within a radius of {{radius}} meters.
{{/has_radius}}

{{#has_type}}
Search for places of type: {{type}}.
{{/has_type}}

{{#has_keyword}}
Search for places with the keyword: {{keyword}}.
{{/has_keyword}}

{{#has_limit}}
Limit the number of results to {{limit}}.
{{/has_limit}}

<response>
For each place in the search results, provide the following details in a table format:
- Name
- Formatted Address
- Latitude
- Longitude
- Place ID
- Types
- Website (if available)
- Rating (if available)
- User Ratings Total (if available)
</response>
