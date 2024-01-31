--postgresql CDM Primary Key Constraints for OMOP Common Data Model 5.4
ALTER TABLE omopcdm.person ADD CONSTRAINT xpk_person PRIMARY KEY (person_id);
ALTER TABLE omopcdm.observation_period ADD CONSTRAINT xpk_observation_period PRIMARY KEY (observation_period_id);
ALTER TABLE omopcdm.visit_occurrence ADD CONSTRAINT xpk_visit_occurrence PRIMARY KEY (visit_occurrence_id);
ALTER TABLE omopcdm.visit_detail ADD CONSTRAINT xpk_visit_detail PRIMARY KEY (visit_detail_id);
ALTER TABLE omopcdm.condition_occurrence ADD CONSTRAINT xpk_condition_occurrence PRIMARY KEY (condition_occurrence_id);
ALTER TABLE omopcdm.drug_exposure ADD CONSTRAINT xpk_drug_exposure PRIMARY KEY (drug_exposure_id);
ALTER TABLE omopcdm.procedure_occurrence ADD CONSTRAINT xpk_procedure_occurrence PRIMARY KEY (procedure_occurrence_id);
ALTER TABLE omopcdm.device_exposure ADD CONSTRAINT xpk_device_exposure PRIMARY KEY (device_exposure_id);
ALTER TABLE omopcdm.measurement ADD CONSTRAINT xpk_measurement PRIMARY KEY (measurement_id);
ALTER TABLE omopcdm.observation ADD CONSTRAINT xpk_observation PRIMARY KEY (observation_id);
ALTER TABLE omopcdm.note ADD CONSTRAINT xpk_note PRIMARY KEY (note_id);
ALTER TABLE omopcdm.note_nlp ADD CONSTRAINT xpk_note_nlp PRIMARY KEY (note_nlp_id);
ALTER TABLE omopcdm.specimen ADD CONSTRAINT xpk_specimen PRIMARY KEY (specimen_id);
ALTER TABLE omopcdm.location ADD CONSTRAINT xpk_location PRIMARY KEY (location_id);
ALTER TABLE omopcdm.care_site ADD CONSTRAINT xpk_care_site PRIMARY KEY (care_site_id);
ALTER TABLE omopcdm.provider ADD CONSTRAINT xpk_provider PRIMARY KEY (provider_id);
ALTER TABLE omopcdm.payer_plan_period ADD CONSTRAINT xpk_payer_plan_period PRIMARY KEY (payer_plan_period_id);
ALTER TABLE omopcdm.cost ADD CONSTRAINT xpk_cost PRIMARY KEY (cost_id);
ALTER TABLE omopcdm.drug_era ADD CONSTRAINT xpk_drug_era PRIMARY KEY (drug_era_id);
ALTER TABLE omopcdm.dose_era ADD CONSTRAINT xpk_dose_era PRIMARY KEY (dose_era_id);
ALTER TABLE omopcdm.condition_era ADD CONSTRAINT xpk_condition_era PRIMARY KEY (condition_era_id);
ALTER TABLE omopcdm.episode ADD CONSTRAINT xpk_episode PRIMARY KEY (episode_id);
ALTER TABLE omopcdm.metadata ADD CONSTRAINT xpk_metadata PRIMARY KEY (metadata_id);
ALTER TABLE omopcdm.concept ADD CONSTRAINT xpk_concept PRIMARY KEY (concept_id);
ALTER TABLE omopcdm.vocabulary ADD CONSTRAINT xpk_vocabulary PRIMARY KEY (vocabulary_id);
ALTER TABLE omopcdm.domain ADD CONSTRAINT xpk_domain PRIMARY KEY (domain_id);
ALTER TABLE omopcdm.concept_class ADD CONSTRAINT xpk_concept_class PRIMARY KEY (concept_class_id);
ALTER TABLE omopcdm.relationship ADD CONSTRAINT xpk_relationship PRIMARY KEY (relationship_id);
