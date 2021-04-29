resource "algolia_index" "items" {
  name = "items"

  attributes_config {
    searchable_attributes = [
      "name",
      "shortDescription",
      "type",
      "shipping",
      "categories"
    ]

    attributes_to_retrieve = [
      "object_id",
      "name",
      "shortDescription",
      "bestSellingRank",
      "thumbnailImage",
      "salePrice",
      "url",
      "type",
      "image",
      "customerReviewCount",
      "shipping",
      "category"
    ]
  }
}

# api key for application server
resource "algolia_api_key" "app" {
  acl     = ["search", "browse"]
  indexes = [algolia_index.items.name]
}
