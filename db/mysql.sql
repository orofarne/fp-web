create view new_atlases AS
  SELECT
    0 AS id,
    id AS slug,
    title,
    form_id,
    west,
    south,
    east,
    north,
    zoom,
    paper_size,
    orientation,
    layout,
    provider,
    pdf_url,
    preview_url,
    geotiff_url,
    atlas_pages,
    country_name,
    country_woeid,
    region_name,
    region_woeid,
    place_name,
    place_woeid,
    user_id,
    created AS created_at,
    created AS updated_at,
    composed,
    progress,
    private,
    text,
    cloned,
    refreshed
  FROM prints;

create view new_pages AS
  SELECT
    0 AS id,
    print_id,
    page_number,
    text,
    west,
    south,
    east,
    north,
    zoom,
    provider,
    preview_url,
    country_name,
    country_woeid,
    region_name,
    region_woeid,
    place_name,
    place_woeid,
    user_id,
    created,
    composed
  FROM pages;
