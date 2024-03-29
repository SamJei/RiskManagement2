using { RiskManagement as my } from '../db/schema';

@path : '/service/RiskManagement'
service RiskManagementService
{
    @odata.draft.enabled
    entity Risks as
        projection on my.Risks;

    @odata.draft.enabled
    entity Migitations as
        projection on my.Migitations;
}

annotate RiskManagementService with @requires :
[
    'authenticated-user',
    'any'
];
