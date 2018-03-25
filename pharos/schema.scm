((table "alias" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "type" "text") (field/non-primary-key "value" "text") (field/non-primary-key "dataset_id" "integer") (foreign-key "fk_alias_dataset" ("dataset_id") "dataset" ("id")) (foreign-key "fk_alias_protein" ("protein_id") "protein" ("id")))) (table "chembl_activity" ((field/primary-key "id" "integer") (field/non-primary-key "target_id" "integer") (field/non-primary-key "cmpd_chemblid" "text") (field/non-primary-key "cmpd_name_in_ref" "text") (field/non-primary-key "smiles" "text") (field/non-primary-key "act_value" "decimal") (field/non-primary-key "act_type" "text") (field/non-primary-key "reference" "text") (field/non-primary-key "pubmed_id" "integer") (field/non-primary-key "cmpd_pubchem_cid" "integer") (foreign-key "fk_chembl_activity__target" ("target_id") "target" ("id")))) (table "compartment" ((field/primary-key "id" "integer") (field/non-primary-key "ctype" "text") (field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "go_id" "text") (field/non-primary-key "go_term" "text") (field/non-primary-key "evidence" "text") (field/non-primary-key "zscore" "decimal") (field/non-primary-key "conf" "decimal") (field/non-primary-key "url" "text") (field/non-primary-key "reliability" "text") (foreign-key "fk_compartment__compartment_type" ("ctype") "compartment_type" ("name")) (foreign-key "fk_compartment_protein" ("protein_id") "protein" ("id")) (foreign-key "fk_compartment_target" ("target_id") "target" ("id")))) (table "compartment_type" ((field/non-primary-key "name" "text") (field/non-primary-key "description" "text") (primary-key ("name")))) (table "data_type" ((field/non-primary-key "name" "text") (primary-key ("name")))) (table "dataset" ((field/primary-key "id" "integer") (field/non-primary-key "name" "text") (field/non-primary-key "source" "text") (field/non-primary-key "app" "text") (field/non-primary-key "app_version" "text") (field/non-primary-key "datetime" "timestamp") (field/non-primary-key "url" "text") (field/non-primary-key "comments" "text"))) (table "dbinfo" ((field/non-primary-key "dbname" "text") (field/non-primary-key "schema_ver" "text") (field/non-primary-key "data_ver" "text") (field/non-primary-key "owner" "text") (field/non-primary-key "is_copy" "integer") (field/non-primary-key "dump_file" "text"))) (table "disease" ((field/primary-key "id" "integer") (field/non-primary-key "dtype" "text") (field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "name" "text") (field/non-primary-key "did" "text") (field/non-primary-key "evidence" "text") (field/non-primary-key "zscore" "decimal") (field/non-primary-key "conf" "decimal") (field/non-primary-key "description" "text") (field/non-primary-key "reference" "text") (field/non-primary-key "drug_name" "text") (field/non-primary-key "log2foldchange" "decimal") (field/non-primary-key "pvalue" "text") (field/non-primary-key "score" "decimal") (field/non-primary-key "source" "text") (field/non-primary-key "O2S" "decimal") (field/non-primary-key "S2O" "decimal") (foreign-key "fk_disease__disease_type" ("dtype") "disease_type" ("name")) (foreign-key "fk_disease_protein" ("protein_id") "protein" ("id")) (foreign-key "fk_disease_target" ("target_id") "target" ("id")))) (table "disease_type" ((field/non-primary-key "name" "text") (field/non-primary-key "description" "text") (primary-key ("name")))) (table "do" ((field/non-primary-key "id" "text") (field/non-primary-key "name" "text") (field/non-primary-key "def" "text") (primary-key ("id")))) (table "do_parent" ((field/non-primary-key "doid" "text") (field/non-primary-key "parent" "text"))) (table "drug_activity" ((field/primary-key "id" "integer") (field/non-primary-key "target_id" "integer") (field/non-primary-key "drug" "text") (field/non-primary-key "act_value" "decimal") (field/non-primary-key "act_type" "text") (field/non-primary-key "action_type" "text") (field/non-primary-key "has_moa" "integer") (field/non-primary-key "source" "text") (field/non-primary-key "reference" "text") (field/non-primary-key "smiles" "text") (field/non-primary-key "cmpd_chemblid" "text") (field/non-primary-key "nlm_drug_info" "text") (field/non-primary-key "cmpd_pubchem_cid" "integer") (foreign-key "fk_drug_activity__target" ("target_id") "target" ("id")))) (table "dto" ((field/non-primary-key "id" "text") (field/non-primary-key "name" "text") (field/non-primary-key "parent" "text") (primary-key ("id")) (foreign-key "fk_dto_dto" ("parent") "dto" ("id")))) (table "expression" ((field/primary-key "id" "integer") (field/non-primary-key "etype" "text") (field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "tissue" "text") (field/non-primary-key "qual_value" "text") (field/non-primary-key "number_value" "decimal") (field/non-primary-key "boolean_value" "integer") (field/non-primary-key "string_value" "text") (field/non-primary-key "pubmed_id" "integer") (field/non-primary-key "evidence" "text") (field/non-primary-key "zscore" "decimal") (field/non-primary-key "conf" "decimal") (field/non-primary-key "oid" "text") (field/non-primary-key "confidence" "integer") (field/non-primary-key "age" "text") (field/non-primary-key "gender" "text") (field/non-primary-key "url" "text") (foreign-key "fk_expression__expression_type" ("etype") "expression_type" ("name")) (foreign-key "fk_expression__protein" ("protein_id") "protein" ("id")) (foreign-key "fk_expression__target" ("target_id") "target" ("id")))) (table "expression_type" ((field/non-primary-key "name" "text") (field/non-primary-key "data_type" "text") (field/non-primary-key "description" "text") (primary-key ("name")) (unique ("name" "data_type")) (foreign-key "fk_expression_type__data_type" ("data_type") "data_type" ("name")))) (table "feature" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "type" "text") (field/non-primary-key "description" "text") (field/non-primary-key "srcid" "text") (field/non-primary-key "evidence" "text") (field/non-primary-key "begin" "integer") (field/non-primary-key "end" "integer") (field/non-primary-key "position" "integer") (field/non-primary-key "original" "text") (field/non-primary-key "variation" "text") (foreign-key "fk_feature_protein" ("protein_id") "protein" ("id")))) (table "gene_attribute" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "gat_id" "integer") (field/non-primary-key "name" "text") (field/non-primary-key "value" "integer") (foreign-key "fk_gene_attribute__gene_attribute_type" ("gat_id") "gene_attribute_type" ("id")) (foreign-key "fk_gene_attribute__protein" ("protein_id") "protein" ("id")))) (table "gene_attribute_type" ((field/primary-key "id" "integer") (field/non-primary-key "name" "text") (field/non-primary-key "association" "text") (field/non-primary-key "description" "text") (field/non-primary-key "resource_group" "text") (field/non-primary-key "measurement" "text") (field/non-primary-key "attribute_group" "text") (field/non-primary-key "attribute_type" "text") (field/non-primary-key "pubmed_ids" "text") (field/non-primary-key "url" "text") (unique ("name")))) (table "generif" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "pubmed_ids" "text") (field/non-primary-key "text" "text") (field/non-primary-key "years" "text") (foreign-key "fk_generif_protein" ("protein_id") "protein" ("id")))) (table "goa" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "go_id" "text") (field/non-primary-key "go_term" "text") (field/non-primary-key "evidence" "text") (field/non-primary-key "goeco" "text") (foreign-key "fk_goa_protein" ("protein_id") "protein" ("id")))) (table "grant" ((field/primary-key "id" "integer") (field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "appid" "integer") (field/non-primary-key "full_project_num" "text") (field/non-primary-key "activity" "text") (field/non-primary-key "funding_ics" "text") (field/non-primary-key "year" "integer") (field/non-primary-key "cost" "decimal") (foreign-key "fk_grant_protein" ("protein_id") "protein" ("id")) (foreign-key "fk_grant_target" ("target_id") "target" ("id")))) (table "hgram_cdf" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "type" "text") (field/non-primary-key "attr_count" "integer") (field/non-primary-key "attr_cdf" "decimal") (foreign-key "fk_hgram_cdf__gene_attribute_type" ("type") "gene_attribute_type" ("name")) (foreign-key "fk_hgram_cdf__protein" ("protein_id") "protein" ("id")))) (table "info_type" ((field/non-primary-key "name" "text") (field/non-primary-key "data_type" "text") (field/non-primary-key "unit" "text") (field/non-primary-key "description" "text") (primary-key ("name")) (unique ("name" "data_type")) (unique ("name" "data_type")) (foreign-key "fk_info_type__data_type" ("data_type") "data_type" ("name")))) (table "kegg_distance" ((field/primary-key "id" "integer") (field/non-primary-key "pid1" "integer") (field/non-primary-key "pid2" "integer") (field/non-primary-key "distance" "integer") (foreign-key "fk_kegg_distance__protein1" ("pid1") "protein" ("id")) (foreign-key "fk_kegg_distance__protein2" ("pid2") "protein" ("id")))) (table "kegg_nearest_tclin" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "tclin_id" "integer") (field/non-primary-key "direction" "text") (field/non-primary-key "distance" "integer") (foreign-key "fk_kegg_nearest_tclin__protein" ("protein_id") "protein" ("id")) (foreign-key "fk_kegg_nearest_tclin__target" ("tclin_id") "target" ("id")))) (table "locsig" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "location" "text") (field/non-primary-key "signal" "text") (field/non-primary-key "pmids" "text") (foreign-key "fk_locsig_protein" ("protein_id") "protein" ("id")))) (table "mlp_assay_info" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "assay_name" "text") (field/non-primary-key "method" "text") (field/non-primary-key "active_sids" "integer") (field/non-primary-key "inactive_sids" "integer") (field/non-primary-key "iconclusive_sids" "integer") (field/non-primary-key "total_sids" "integer") (field/non-primary-key "aid" "integer") (foreign-key "fk_mai_protein" ("protein_id") "protein" ("id")))) (table "ortholog" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "taxid" "integer") (field/non-primary-key "species" "text") (field/non-primary-key "db_id" "text") (field/non-primary-key "geneid" "integer") (field/non-primary-key "symbol" "text") (field/non-primary-key "name" "text") (field/non-primary-key "mod_url" "text") (field/non-primary-key "sources" "text") (foreign-key "fk_ortholog_protein" ("protein_id") "protein" ("id")))) (table "p2pc" ((field/non-primary-key "panther_class_id" "integer") (field/non-primary-key "protein_id" "integer") (foreign-key "fk_p2pc__panther_class" ("panther_class_id") "panther_class" ("id")) (foreign-key "fk_p2pc_protein" ("protein_id") "protein" ("id")))) (table "panther_class" ((field/primary-key "id" "integer") (field/non-primary-key "pcid" "text") (field/non-primary-key "parent_pcids" "text") (field/non-primary-key "name" "text") (field/non-primary-key "description" "text") (unique ("pcid")))) (table "patent_count" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "year" "integer") (field/non-primary-key "count" "integer") (foreign-key "fk_patent_count__protein" ("protein_id") "protein" ("id")))) (table "pathway" ((field/primary-key "id" "integer") (field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "pwtype" "text") (field/non-primary-key "id_in_source" "text") (field/non-primary-key "name" "text") (field/non-primary-key "description" "text") (field/non-primary-key "url" "text") (foreign-key "fk_pathway__pathway_type" ("pwtype") "pathway_type" ("name")) (foreign-key "fk_pathway_protein" ("protein_id") "protein" ("id")) (foreign-key "fk_pathway_target" ("target_id") "target" ("id")))) (table "pathway_type" ((field/non-primary-key "name" "text") (field/non-primary-key "url" "text") (primary-key ("name")))) (table "phenotype" ((field/primary-key "id" "integer") (field/non-primary-key "ptype" "text") (field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "trait" "text") (field/non-primary-key "pmid" "integer") (field/non-primary-key "snps" "text") (field/non-primary-key "top_level_term_id" "text") (field/non-primary-key "top_level_term_name" "text") (field/non-primary-key "term_id" "text") (field/non-primary-key "term_name" "text") (field/non-primary-key "p_value" "decimal") (field/non-primary-key "percentage_change" "text") (field/non-primary-key "effect_size" "text") (field/non-primary-key "statistical_method" "text") (field/non-primary-key "term_description" "text") (foreign-key "fk_phenotype_info_type" ("ptype") "phenotype_type" ("name")) (foreign-key "fk_phenotype_protein" ("protein_id") "protein" ("id")) (foreign-key "fk_phenotype_target" ("target_id") "target" ("id")))) (table "phenotype_type" ((field/non-primary-key "name" "text") (field/non-primary-key "ontology" "text") (field/non-primary-key "description" "text") (primary-key ("name")) (unique ("name" "ontology")))) (table "pmscore" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "year" "integer") (field/non-primary-key "score" "decimal") (foreign-key "fk_pmscore_protein" ("protein_id") "protein" ("id")))) (table "ppi" ((field/primary-key "id" "integer") (field/non-primary-key "ppitype" "text") (field/non-primary-key "protein1_id" "integer") (field/non-primary-key "protein1_str" "text") (field/non-primary-key "protein2_id" "integer") (field/non-primary-key "protein2_str" "text") (field/non-primary-key "p_int" "decimal") (field/non-primary-key "p_ni" "decimal") (field/non-primary-key "p_wrong" "decimal") (field/non-primary-key "evidence" "text") (foreign-key "fk_ppi_protein1" ("protein1_id") "protein" ("id")) (foreign-key "fk_ppi_protein2" ("protein2_id") "protein" ("id")))) (table "ppi_type" ((field/non-primary-key "name" "text") (field/non-primary-key "description" "text") (field/non-primary-key "url" "text") (primary-key ("name")))) (table "protein" ((field/primary-key "id" "integer") (field/non-primary-key "name" "text") (field/non-primary-key "description" "text") (field/non-primary-key "uniprot" "text") (field/non-primary-key "up_version" "integer") (field/non-primary-key "geneid" "integer") (field/non-primary-key "sym" "text") (field/non-primary-key "family" "text") (field/non-primary-key "chr" "text") (field/non-primary-key "seq" "text") (field/non-primary-key "dtoid" "text") (field/non-primary-key "stringid" "text") (unique ("uniprot")) (unique ("name")))) (table "protein2pubmed" ((field/non-primary-key "protein_id" "integer") (field/non-primary-key "pubmed_id" "integer") (foreign-key "fk_protein2pubmed__protein" ("protein_id") "protein" ("id")) (foreign-key "fk_protein2pubmed__pubmed" ("pubmed_id") "pubmed" ("id")))) (table "provenance" ((field/primary-key "id" "integer") (field/non-primary-key "dataset_id" "integer") (field/non-primary-key "table_name" "text") (field/non-primary-key "column_name" "text") (field/non-primary-key "where_clause" "text") (field/non-primary-key "comment" "text") (foreign-key "fk_provenance_dataset" ("dataset_id") "dataset" ("id")))) (table "ptscore" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "year" "integer") (field/non-primary-key "score" "decimal") (foreign-key "fk_ptscore_protein" ("protein_id") "protein" ("id")))) (table "pubmed" ((field/non-primary-key "id" "integer") (field/non-primary-key "title" "text") (field/non-primary-key "journal" "text") (field/non-primary-key "date" "text") (field/non-primary-key "authors" "text") (field/non-primary-key "abstract" "text") (primary-key ("id")))) (table "t2tc" ((field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "nucleic_acid_id" "integer") (foreign-key "fk_t2tc__protein" ("protein_id") "protein" ("id")) (foreign-key "fk_t2tc__target" ("target_id") "target" ("id")))) (table "target" ((field/primary-key "id" "integer") (field/non-primary-key "name" "text") (field/non-primary-key "ttype" "text") (field/non-primary-key "description" "text") (field/non-primary-key "comment" "text") (field/non-primary-key "tdl" "text") (field/non-primary-key "idg2" "integer") (field/non-primary-key "fam" "text") (field/non-primary-key "famext" "text"))) (table "tdl_info" ((field/primary-key "id" "integer") (field/non-primary-key "itype" "text") (field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "nucleic_acid_id" "integer") (field/non-primary-key "string_value" "text") (field/non-primary-key "number_value" "decimal") (field/non-primary-key "integer_value" "integer") (field/non-primary-key "date_value" "date") (field/non-primary-key "boolean_value" "integer") (field/non-primary-key "curration_level" "text") (foreign-key "fk_tdl_info__info_type" ("itype") "info_type" ("name")) (foreign-key "fk_tdl_info__protein" ("protein_id") "protein" ("id")) (foreign-key "fk_tdl_info__target" ("target_id") "target" ("id")))) (table "tdl_update_log" ((field/primary-key "id" "integer") (field/non-primary-key "target_id" "integer") (field/non-primary-key "old_tdl" "text") (field/non-primary-key "new_tdl" "text") (field/non-primary-key "person" "text") (field/non-primary-key "datetime" "timestamp") (field/non-primary-key "explanation" "text") (field/non-primary-key "application" "text") (field/non-primary-key "app_version" "text") (foreign-key "fk_tdl_update_log__target" ("target_id") "target" ("id")))) (table "techdev_contact" ((field/non-primary-key "id" "integer") (field/non-primary-key "contact_name" "text") (field/non-primary-key "contact_email" "text") (field/non-primary-key "date" "date") (field/non-primary-key "grant_number" "text") (field/non-primary-key "pi" "text") (primary-key ("id")))) (table "techdev_info" ((field/primary-key "id" "integer") (field/non-primary-key "contact_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "comment" "text") (field/non-primary-key "publication_pcmid" "text") (field/non-primary-key "publication_pmid" "integer") (field/non-primary-key "resource_url" "text") (field/non-primary-key "data_url" "text") (foreign-key "fk_techdev_info__protein" ("protein_id") "protein" ("id")) (foreign-key "fk_techdev_info__techdev_contact" ("contact_id") "techdev_contact" ("id")))) (table "tinx_articlerank" ((field/primary-key "id" "integer") (field/non-primary-key "importance_id" "integer") (field/non-primary-key "pmid" "integer") (field/non-primary-key "rank" "integer") (foreign-key "fk_tinx_articlerank__tinx_importance" ("importance_id") "tinx_importance" ("id")))) (table "tinx_disease" ((field/primary-key "id" "integer") (field/non-primary-key "doid" "text") (field/non-primary-key "name" "text") (field/non-primary-key "summary" "text") (field/non-primary-key "score" "decimal"))) (table "tinx_importance" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "disease_id" "integer") (field/non-primary-key "score" "decimal") (foreign-key "fk_tinx_importance__protein" ("protein_id") "protein" ("id")) (foreign-key "fk_tinx_importance__tinx_disease" ("disease_id") "tinx_disease" ("id")))) (table "tinx_novelty" ((field/primary-key "id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "score" "decimal") (foreign-key "fk_tinx_novelty__protein" ("protein_id") "protein" ("id")))) (table "xref" ((field/primary-key "id" "integer") (field/non-primary-key "xtype" "text") (field/non-primary-key "target_id" "integer") (field/non-primary-key "protein_id" "integer") (field/non-primary-key "nucleic_acid_id" "integer") (field/non-primary-key "value" "text") (field/non-primary-key "xtra" "text") (field/non-primary-key "dataset_id" "integer") (unique ("xtype" "target_id" "value")) (unique ("xtype" "protein_id" "value")) (foreign-key "fk_xref__xref_type" ("xtype") "xref_type" ("name")) (foreign-key "fk_xref_dataset" ("dataset_id") "dataset" ("id")) (foreign-key "fk_xref_protein" ("protein_id") "protein" ("id")) (foreign-key "fk_xref_target" ("target_id") "target" ("id")))) (table "xref_type" ((field/non-primary-key "name" "text") (field/non-primary-key "description" "text") (field/non-primary-key "url" "text") (field/non-primary-key "eg_q_url" "text") (primary-key ("name")))) (index "idx_tinx_articlerank_tinx_articlerank_idx1" "tinx_articlerank" ("importance_id")) (index "idx_t2tc_t2tc_idx1" "t2tc" ("target_id")) (index "idx_t2tc_t2tc_idx2" "t2tc" ("protein_id")) (index "idx_info_type_fk_info_type__data_type" "info_type" ("data_type")) (index "idx_pmscore_pmscore_idx1" "pmscore" ("protein_id")) (index "idx_xref_xref_idx1" "xref" ("xtype")) (index "idx_xref_xref_idx2" "xref" ("target_id")) (index "idx_xref_xref_idx4" "xref" ("protein_id")) (index "idx_xref_xref_idx6" "xref" ("dataset_id")) (index "idx_dto_dto_idx1" "dto" ("parent")) (index "idx_ppi_ppi_idx1" "ppi" ("protein1_id")) (index "idx_ppi_ppi_idx2" "ppi" ("protein2_id")) (index "idx_ppi_ppi_idx3" "ppi" ("ppitype")) (index "idx_ptscore_ptscore_idx1" "ptscore" ("protein_id")) (index "idx_drug_activity_drug_activity_idx1" "drug_activity" ("target_id")) (index "idx_tinx_importance_tinx_importance_idx1" "tinx_importance" ("protein_id")) (index "idx_tinx_importance_tinx_importance_idx2" "tinx_importance" ("disease_id")) (index "idx_gene_attribute_gene_attribute_idx1" "gene_attribute" ("protein_id")) (index "idx_gene_attribute_gene_attribute_idx2" "gene_attribute" ("gat_id")) (index "idx_feature_feature_idx1" "feature" ("protein_id")) (index "idx_compartment_compartment_idx1" "compartment" ("ctype")) (index "idx_compartment_compartment_idx2" "compartment" ("target_id")) (index "idx_compartment_compartment_idx3" "compartment" ("protein_id")) (index "idx_p2pc_p2pc_idx1" "p2pc" ("panther_class_id")) (index "idx_p2pc_p2pc_idx2" "p2pc" ("protein_id")) (index "idx_chembl_activity_chembl_activity_idx1" "chembl_activity" ("target_id")) (index "idx_locsig_compartment_idx1" "locsig" ("protein_id")) (index "idx_goa_goa_idx1" "goa" ("protein_id")) (index "idx_tdl_info_tdl_info_idx1" "tdl_info" ("itype")) (index "idx_tdl_info_tdl_info_idx2" "tdl_info" ("target_id")) (index "idx_tdl_info_tdl_info_idx3" "tdl_info" ("protein_id")) (index "idx_protein2pubmed_protein2pubmed_idx1" "protein2pubmed" ("protein_id")) (index "idx_protein2pubmed_protein2pubmed_idx2" "protein2pubmed" ("pubmed_id")) (index "idx_ortholog_ortholog_idx1" "ortholog" ("protein_id")) (index "idx_disease_disease_idx1" "disease" ("dtype")) (index "idx_disease_disease_idx2" "disease" ("target_id")) (index "idx_disease_disease_idx3" "disease" ("protein_id")) (index "idx_techdev_info_techdev_info_idx1" "techdev_info" ("contact_id")) (index "idx_techdev_info_techdev_info_idx2" "techdev_info" ("protein_id")) (index "idx_phenotype_phenotype_idx1" "phenotype" ("ptype")) (index "idx_phenotype_phenotype_idx2" "phenotype" ("target_id")) (index "idx_phenotype_phenotype_idx3" "phenotype" ("protein_id")) (index "idx_mlp_assay_info_mlp_assay_info_idx1" "mlp_assay_info" ("protein_id")) (index "idx_grant_grant_idx1" "grant" ("target_id")) (index "idx_grant_grant_idx2" "grant" ("protein_id")) (index "idx_tdl_update_log_tdl_update_log" "tdl_update_log" ("target_id")) (index "idx_patent_count_patent_count_idx1" "patent_count" ("protein_id")) (index "idx_expression_expression_idx1" "expression" ("etype")) (index "idx_expression_expression_idx2" "expression" ("target_id")) (index "idx_expression_expression_idx3" "expression" ("protein_id")) (index "idx_tinx_novelty_tinx_novelty_idx1" "tinx_novelty" ("protein_id")) (index "idx_provenance_provenance_idx1" "provenance" ("dataset_id")) (index "idx_kegg_distance_kegg_distance_idx1" "kegg_distance" ("pid1")) (index "idx_kegg_distance_kegg_distance_idx2" "kegg_distance" ("pid2")) (index "idx_generif_generif_idx1" "generif" ("protein_id")) (index "idx_expression_type_fk_expression_type__data_type" "expression_type" ("data_type")) (index "idx_alias_alias_idx1" "alias" ("protein_id")) (index "idx_alias_alias_idx2" "alias" ("dataset_id")) (index "idx_kegg_nearest_tclin_kegg_nearest_tclin_idx1" "kegg_nearest_tclin" ("protein_id")) (index "idx_kegg_nearest_tclin_kegg_nearest_tclin_idx2" "kegg_nearest_tclin" ("tclin_id")) (index "idx_hgram_cdf_hgram_cdf_idx1" "hgram_cdf" ("protein_id")) (index "idx_hgram_cdf_hgram_cdf_idx2" "hgram_cdf" ("type")) (index "idx_pathway_pathway_idx1" "pathway" ("target_id")) (index "idx_pathway_pathway_idx2" "pathway" ("protein_id")) (index "idx_pathway_pathway_idx3" "pathway" ("pwtype")))