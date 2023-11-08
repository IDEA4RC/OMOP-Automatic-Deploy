--postgresql CDM Foreign Key Constraints for OMOP Common Data Model 5.4
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_gender_concept_id FOREIGN KEY (gender_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_race_concept_id FOREIGN KEY (race_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_ethnicity_concept_id FOREIGN KEY (ethnicity_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_location_id FOREIGN KEY (location_id) REFERENCES omopSchema.LOCATION (LOCATION_ID);
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_care_site_id FOREIGN KEY (care_site_id) REFERENCES omopSchema.CARE_SITE (CARE_SITE_ID);
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_gender_source_concept_id FOREIGN KEY (gender_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_race_source_concept_id FOREIGN KEY (race_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.person ADD CONSTRAINT fpk_person_ethnicity_source_concept_id FOREIGN KEY (ethnicity_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.observation_period ADD CONSTRAINT fpk_observation_period_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.observation_period ADD CONSTRAINT fpk_observation_period_period_type_concept_id FOREIGN KEY (period_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_visit_concept_id FOREIGN KEY (visit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_visit_type_concept_id FOREIGN KEY (visit_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_care_site_id FOREIGN KEY (care_site_id) REFERENCES omopSchema.CARE_SITE (CARE_SITE_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_visit_source_concept_id FOREIGN KEY (visit_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_admitted_from_concept_id FOREIGN KEY (admitted_from_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_discharged_to_concept_id FOREIGN KEY (discharged_to_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_occurrence ADD CONSTRAINT fpk_visit_occurrence_preceding_visit_occurrence_id FOREIGN KEY (preceding_visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_visit_detail_concept_id FOREIGN KEY (visit_detail_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_visit_detail_type_concept_id FOREIGN KEY (visit_detail_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_care_site_id FOREIGN KEY (care_site_id) REFERENCES omopSchema.CARE_SITE (CARE_SITE_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_visit_detail_source_concept_id FOREIGN KEY (visit_detail_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_admitted_from_concept_id FOREIGN KEY (admitted_from_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_discharged_to_concept_id FOREIGN KEY (discharged_to_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_preceding_visit_detail_id FOREIGN KEY (preceding_visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_parent_visit_detail_id FOREIGN KEY (parent_visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.visit_detail ADD CONSTRAINT fpk_visit_detail_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_condition_concept_id FOREIGN KEY (condition_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_condition_type_concept_id FOREIGN KEY (condition_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_condition_status_concept_id FOREIGN KEY (condition_status_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.condition_occurrence ADD CONSTRAINT fpk_condition_occurrence_condition_source_concept_id FOREIGN KEY (condition_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_drug_type_concept_id FOREIGN KEY (drug_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_route_concept_id FOREIGN KEY (route_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.drug_exposure ADD CONSTRAINT fpk_drug_exposure_drug_source_concept_id FOREIGN KEY (drug_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_procedure_concept_id FOREIGN KEY (procedure_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_procedure_type_concept_id FOREIGN KEY (procedure_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_modifier_concept_id FOREIGN KEY (modifier_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.procedure_occurrence ADD CONSTRAINT fpk_procedure_occurrence_procedure_source_concept_id FOREIGN KEY (procedure_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_device_concept_id FOREIGN KEY (device_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_device_type_concept_id FOREIGN KEY (device_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_device_source_concept_id FOREIGN KEY (device_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.device_exposure ADD CONSTRAINT fpk_device_exposure_unit_source_concept_id FOREIGN KEY (unit_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_measurement_concept_id FOREIGN KEY (measurement_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_measurement_type_concept_id FOREIGN KEY (measurement_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_operator_concept_id FOREIGN KEY (operator_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_measurement_source_concept_id FOREIGN KEY (measurement_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_unit_source_concept_id FOREIGN KEY (unit_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.measurement ADD CONSTRAINT fpk_measurement_meas_event_field_concept_id FOREIGN KEY (meas_event_field_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_observation_concept_id FOREIGN KEY (observation_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_observation_type_concept_id FOREIGN KEY (observation_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_qualifier_concept_id FOREIGN KEY (qualifier_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_observation_source_concept_id FOREIGN KEY (observation_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.observation ADD CONSTRAINT fpk_observation_obs_event_field_concept_id FOREIGN KEY (obs_event_field_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.death ADD CONSTRAINT fpk_death_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.death ADD CONSTRAINT fpk_death_death_type_concept_id FOREIGN KEY (death_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.death ADD CONSTRAINT fpk_death_cause_concept_id FOREIGN KEY (cause_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.death ADD CONSTRAINT fpk_death_cause_source_concept_id FOREIGN KEY (cause_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_note_type_concept_id FOREIGN KEY (note_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_note_class_concept_id FOREIGN KEY (note_class_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_encoding_concept_id FOREIGN KEY (encoding_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_language_concept_id FOREIGN KEY (language_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_provider_id FOREIGN KEY (provider_id) REFERENCES omopSchema.PROVIDER (PROVIDER_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_visit_occurrence_id FOREIGN KEY (visit_occurrence_id) REFERENCES omopSchema.VISIT_OCCURRENCE (VISIT_OCCURRENCE_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_visit_detail_id FOREIGN KEY (visit_detail_id) REFERENCES omopSchema.VISIT_DETAIL (VISIT_DETAIL_ID);
ALTER TABLE omopSchema.note ADD CONSTRAINT fpk_note_note_event_field_concept_id FOREIGN KEY (note_event_field_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.note_nlp ADD CONSTRAINT fpk_note_nlp_section_concept_id FOREIGN KEY (section_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.note_nlp ADD CONSTRAINT fpk_note_nlp_note_nlp_concept_id FOREIGN KEY (note_nlp_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.note_nlp ADD CONSTRAINT fpk_note_nlp_note_nlp_source_concept_id FOREIGN KEY (note_nlp_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.specimen ADD CONSTRAINT fpk_specimen_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.specimen ADD CONSTRAINT fpk_specimen_specimen_concept_id FOREIGN KEY (specimen_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.specimen ADD CONSTRAINT fpk_specimen_specimen_type_concept_id FOREIGN KEY (specimen_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.specimen ADD CONSTRAINT fpk_specimen_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.specimen ADD CONSTRAINT fpk_specimen_anatomic_site_concept_id FOREIGN KEY (anatomic_site_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.specimen ADD CONSTRAINT fpk_specimen_disease_status_concept_id FOREIGN KEY (disease_status_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.fact_relationship ADD CONSTRAINT fpk_fact_relationship_domain_concept_id_1 FOREIGN KEY (domain_concept_id_1) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.fact_relationship ADD CONSTRAINT fpk_fact_relationship_domain_concept_id_2 FOREIGN KEY (domain_concept_id_2) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.fact_relationship ADD CONSTRAINT fpk_fact_relationship_relationship_concept_id FOREIGN KEY (relationship_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.location ADD CONSTRAINT fpk_location_country_concept_id FOREIGN KEY (country_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.care_site ADD CONSTRAINT fpk_care_site_place_of_service_concept_id FOREIGN KEY (place_of_service_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.care_site ADD CONSTRAINT fpk_care_site_location_id FOREIGN KEY (location_id) REFERENCES omopSchema.LOCATION (LOCATION_ID);
ALTER TABLE omopSchema.provider ADD CONSTRAINT fpk_provider_specialty_concept_id FOREIGN KEY (specialty_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.provider ADD CONSTRAINT fpk_provider_care_site_id FOREIGN KEY (care_site_id) REFERENCES omopSchema.CARE_SITE (CARE_SITE_ID);
ALTER TABLE omopSchema.provider ADD CONSTRAINT fpk_provider_gender_concept_id FOREIGN KEY (gender_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.provider ADD CONSTRAINT fpk_provider_specialty_source_concept_id FOREIGN KEY (specialty_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.provider ADD CONSTRAINT fpk_provider_gender_source_concept_id FOREIGN KEY (gender_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_payer_concept_id FOREIGN KEY (payer_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_payer_source_concept_id FOREIGN KEY (payer_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_plan_concept_id FOREIGN KEY (plan_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_plan_source_concept_id FOREIGN KEY (plan_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_sponsor_concept_id FOREIGN KEY (sponsor_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_sponsor_source_concept_id FOREIGN KEY (sponsor_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_stop_reason_concept_id FOREIGN KEY (stop_reason_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.payer_plan_period ADD CONSTRAINT fpk_payer_plan_period_stop_reason_source_concept_id FOREIGN KEY (stop_reason_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.cost ADD CONSTRAINT fpk_cost_cost_domain_id FOREIGN KEY (cost_domain_id) REFERENCES omopSchema.DOMAIN (DOMAIN_ID);
ALTER TABLE omopSchema.cost ADD CONSTRAINT fpk_cost_cost_type_concept_id FOREIGN KEY (cost_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.cost ADD CONSTRAINT fpk_cost_currency_concept_id FOREIGN KEY (currency_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.cost ADD CONSTRAINT fpk_cost_revenue_code_concept_id FOREIGN KEY (revenue_code_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.cost ADD CONSTRAINT fpk_cost_drg_concept_id FOREIGN KEY (drg_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_era ADD CONSTRAINT fpk_drug_era_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.drug_era ADD CONSTRAINT fpk_drug_era_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.dose_era ADD CONSTRAINT fpk_dose_era_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.dose_era ADD CONSTRAINT fpk_dose_era_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.dose_era ADD CONSTRAINT fpk_dose_era_unit_concept_id FOREIGN KEY (unit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.condition_era ADD CONSTRAINT fpk_condition_era_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.condition_era ADD CONSTRAINT fpk_condition_era_condition_concept_id FOREIGN KEY (condition_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.episode ADD CONSTRAINT fpk_episode_person_id FOREIGN KEY (person_id) REFERENCES omopSchema.PERSON (PERSON_ID);
ALTER TABLE omopSchema.episode ADD CONSTRAINT fpk_episode_episode_concept_id FOREIGN KEY (episode_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.episode ADD CONSTRAINT fpk_episode_episode_object_concept_id FOREIGN KEY (episode_object_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.episode ADD CONSTRAINT fpk_episode_episode_type_concept_id FOREIGN KEY (episode_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.episode ADD CONSTRAINT fpk_episode_episode_source_concept_id FOREIGN KEY (episode_source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.episode_event ADD CONSTRAINT fpk_episode_event_episode_id FOREIGN KEY (episode_id) REFERENCES omopSchema.EPISODE (EPISODE_ID);
ALTER TABLE omopSchema.episode_event ADD CONSTRAINT fpk_episode_event_episode_event_field_concept_id FOREIGN KEY (episode_event_field_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.metadata ADD CONSTRAINT fpk_metadata_metadata_concept_id FOREIGN KEY (metadata_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.metadata ADD CONSTRAINT fpk_metadata_metadata_type_concept_id FOREIGN KEY (metadata_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.metadata ADD CONSTRAINT fpk_metadata_value_as_concept_id FOREIGN KEY (value_as_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.cdm_source ADD CONSTRAINT fpk_cdm_source_cdm_version_concept_id FOREIGN KEY (cdm_version_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept ADD CONSTRAINT fpk_concept_domain_id FOREIGN KEY (domain_id) REFERENCES omopSchema.DOMAIN (DOMAIN_ID);
ALTER TABLE omopSchema.concept ADD CONSTRAINT fpk_concept_vocabulary_id FOREIGN KEY (vocabulary_id) REFERENCES omopSchema.VOCABULARY (VOCABULARY_ID);
ALTER TABLE omopSchema.concept ADD CONSTRAINT fpk_concept_concept_class_id FOREIGN KEY (concept_class_id) REFERENCES omopSchema.CONCEPT_CLASS (CONCEPT_CLASS_ID);
ALTER TABLE omopSchema.vocabulary ADD CONSTRAINT fpk_vocabulary_vocabulary_concept_id FOREIGN KEY (vocabulary_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.domain ADD CONSTRAINT fpk_domain_domain_concept_id FOREIGN KEY (domain_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept_class ADD CONSTRAINT fpk_concept_class_concept_class_concept_id FOREIGN KEY (concept_class_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept_relationship ADD CONSTRAINT fpk_concept_relationship_concept_id_1 FOREIGN KEY (concept_id_1) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept_relationship ADD CONSTRAINT fpk_concept_relationship_concept_id_2 FOREIGN KEY (concept_id_2) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept_relationship ADD CONSTRAINT fpk_concept_relationship_relationship_id FOREIGN KEY (relationship_id) REFERENCES omopSchema.RELATIONSHIP (RELATIONSHIP_ID);
ALTER TABLE omopSchema.relationship ADD CONSTRAINT fpk_relationship_relationship_concept_id FOREIGN KEY (relationship_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept_synonym ADD CONSTRAINT fpk_concept_synonym_concept_id FOREIGN KEY (concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept_synonym ADD CONSTRAINT fpk_concept_synonym_language_concept_id FOREIGN KEY (language_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept_ancestor ADD CONSTRAINT fpk_concept_ancestor_ancestor_concept_id FOREIGN KEY (ancestor_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.concept_ancestor ADD CONSTRAINT fpk_concept_ancestor_descendant_concept_id FOREIGN KEY (descendant_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.source_to_concept_map ADD CONSTRAINT fpk_source_to_concept_map_source_concept_id FOREIGN KEY (source_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.source_to_concept_map ADD CONSTRAINT fpk_source_to_concept_map_target_concept_id FOREIGN KEY (target_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.source_to_concept_map ADD CONSTRAINT fpk_source_to_concept_map_target_vocabulary_id FOREIGN KEY (target_vocabulary_id) REFERENCES omopSchema.VOCABULARY (VOCABULARY_ID);
ALTER TABLE omopSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_drug_concept_id FOREIGN KEY (drug_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_ingredient_concept_id FOREIGN KEY (ingredient_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_amount_unit_concept_id FOREIGN KEY (amount_unit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_numerator_unit_concept_id FOREIGN KEY (numerator_unit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.drug_strength ADD CONSTRAINT fpk_drug_strength_denominator_unit_concept_id FOREIGN KEY (denominator_unit_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.cohort_definition ADD CONSTRAINT fpk_cohort_definition_definition_type_concept_id FOREIGN KEY (definition_type_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
ALTER TABLE omopSchema.cohort_definition ADD CONSTRAINT fpk_cohort_definition_subject_concept_id FOREIGN KEY (subject_concept_id) REFERENCES omopSchema.CONCEPT (CONCEPT_ID);
