// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class AccountRelationship {
    global Account AccountFrom;
    global Id AccountFromId;
    global Account AccountTo;
    global Id AccountToId;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<AccountRelationshipFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global List<AccountRelationshipHistory> Histories;
    global Id Id;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastViewedDate;
    global String Name;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global List<NetworkActivityAudit> ParentEntities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<FlowRecordRelation> RelatedRecord;
    global Datetime SystemModstamp;
    global String Type;

    global AccountRelationship () 
    {
    }
}