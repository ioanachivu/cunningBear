// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Report {
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global List<DashboardComponent> CustomReport;
    global String Description;
    global String DeveloperName;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<ReportFeed> Feeds;
    global List<ContentVersion> FirstPublishLocation;
    global String FolderName;
    global String Format;
    global Id Id;
    global Boolean IsDeleted;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime LastReferencedDate;
    global Datetime LastRunDate;
    global Datetime LastViewedDate;
    global List<MetricDataLink> LinkDataSource;
    global String Name;
    global String NamespacePrefix;
    global SObject Owner;
    global Id OwnerId;
    global List<FeedItem> Parent;
    global List<NetworkActivityAudit> ParentEntities;
    global List<FlowRecordRelation> RelatedRecord;
    global List<ReportEvent> Report;
    global Datetime SystemModstamp;

    global Report () 
    {
    }
}