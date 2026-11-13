output "catalog_nodes_lookup_id" {
  description = "Map of id values across all catalog_nodes_lookup, keyed the same as var.catalog_nodes_lookup"
  value       = { for k, v in data.consul_catalog_nodes.catalog_nodes_lookup : k => v.id }
}
output "catalog_nodes_lookup_datacenter" {
  description = "Map of datacenter values across all catalog_nodes_lookup, keyed the same as var.catalog_nodes_lookup"
  value       = { for k, v in data.consul_catalog_nodes.catalog_nodes_lookup : k => v.datacenter }
}
output "catalog_nodes_lookup_node_ids" {
  description = "Map of node_ids values across all catalog_nodes_lookup, keyed the same as var.catalog_nodes_lookup"
  value       = { for k, v in data.consul_catalog_nodes.catalog_nodes_lookup : k => v.node_ids }
}
output "catalog_nodes_lookup_node_names" {
  description = "Map of node_names values across all catalog_nodes_lookup, keyed the same as var.catalog_nodes_lookup"
  value       = { for k, v in data.consul_catalog_nodes.catalog_nodes_lookup : k => v.node_names }
}
output "catalog_nodes_lookup_nodes" {
  description = "Map of nodes values across all catalog_nodes_lookup, keyed the same as var.catalog_nodes_lookup"
  value       = { for k, v in data.consul_catalog_nodes.catalog_nodes_lookup : k => v.nodes }
}
output "catalog_nodes_lookup_query_options" {
  description = "Map of query_options values across all catalog_nodes_lookup, keyed the same as var.catalog_nodes_lookup"
  value       = { for k, v in data.consul_catalog_nodes.catalog_nodes_lookup : k => v.query_options }
  sensitive   = true
}

