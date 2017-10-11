# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_web'

module Azure::Profiles::Management::Profile_Latest
  module Web
    Domains = Azure::ARM::Web::Api_2015_04_01::Domains
    TopLevelDomains = Azure::ARM::Web::Api_2015_04_01::TopLevelDomains
    AppServiceCertificateOrders = Azure::ARM::Web::Api_2015_08_01::AppServiceCertificateOrders
    Certificates = Azure::ARM::Web::Api_2016_03_01::Certificates
    DeletedWebApps = Azure::ARM::Web::Api_2016_03_01::DeletedWebApps
    Provider = Azure::ARM::Web::Api_2016_03_01::Provider
    Recommendations = Azure::ARM::Web::Api_2016_03_01::Recommendations
    WebApps = Azure::ARM::Web::Api_2016_08_01::WebApps
    AppServiceEnvironments = Azure::ARM::Web::Api_2016_09_01::AppServiceEnvironments
    AppServicePlans = Azure::ARM::Web::Api_2016_09_01::AppServicePlans

    module Models
      DomainRecommendationSearchParameters = Azure::ARM::Web::Api_2015_04_01::Models::DomainRecommendationSearchParameters
      Address = Azure::ARM::Web::Api_2015_04_01::Models::Address
      HostName = Azure::ARM::Web::Api_2015_04_01::Models::HostName
      NameIdentifierCollection = Azure::ARM::Web::Api_2015_04_01::Models::NameIdentifierCollection
      DomainPurchaseConsent = Azure::ARM::Web::Api_2015_04_01::Models::DomainPurchaseConsent
      DomainAvailablilityCheckResult = Azure::ARM::Web::Api_2015_04_01::Models::DomainAvailablilityCheckResult
      TopLevelDomainCollection = Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomainCollection
      DomainControlCenterSsoRequest = Azure::ARM::Web::Api_2015_04_01::Models::DomainControlCenterSsoRequest
      DomainOwnershipIdentifierCollection = Azure::ARM::Web::Api_2015_04_01::Models::DomainOwnershipIdentifierCollection
      DomainCollection = Azure::ARM::Web::Api_2015_04_01::Models::DomainCollection
      TldLegalAgreement = Azure::ARM::Web::Api_2015_04_01::Models::TldLegalAgreement
      Contact = Azure::ARM::Web::Api_2015_04_01::Models::Contact
      TldLegalAgreementCollection = Azure::ARM::Web::Api_2015_04_01::Models::TldLegalAgreementCollection
      TopLevelDomainAgreementOption = Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomainAgreementOption
      Domain = Azure::ARM::Web::Api_2015_04_01::Models::Domain
      DomainOwnershipIdentifier = Azure::ARM::Web::Api_2015_04_01::Models::DomainOwnershipIdentifier
      TopLevelDomain = Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomain
      DomainStatus = Azure::ARM::Web::Api_2015_04_01::Models::DomainStatus
      DnsType = Azure::ARM::Web::Api_2015_04_01::Models::DnsType
      DomainType = Azure::ARM::Web::Api_2015_04_01::Models::DomainType
      AppServiceCertificateOrderCollection = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateOrderCollection
      AppServiceCertificate = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificate
      SiteSealRequest = Azure::ARM::Web::Api_2015_08_01::Models::SiteSealRequest
      CertificateDetails = Azure::ARM::Web::Api_2015_08_01::Models::CertificateDetails
      AppServiceCertificateCollection = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateCollection
      NameIdentifier = Azure::ARM::Web::Api_2015_08_01::Models::NameIdentifier
      SiteSeal = Azure::ARM::Web::Api_2015_08_01::Models::SiteSeal
      AppServiceCertificateResource = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateResource
      AppServiceCertificateOrder = Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateOrder
      CertificateEmail = Azure::ARM::Web::Api_2015_08_01::Models::CertificateEmail
      CertificateOrderAction = Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderAction
      ReissueCertificateOrderRequest = Azure::ARM::Web::Api_2015_08_01::Models::ReissueCertificateOrderRequest
      RenewCertificateOrderRequest = Azure::ARM::Web::Api_2015_08_01::Models::RenewCertificateOrderRequest
      CertificateProductType = Azure::ARM::Web::Api_2015_08_01::Models::CertificateProductType
      CertificateOrderStatus = Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderStatus
      CertificateOrderActionType = Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderActionType
      RecommendationRule = Azure::ARM::Web::Api_2016_03_01::Models::RecommendationRule
      CertificateCollection = Azure::ARM::Web::Api_2016_03_01::Models::CertificateCollection
      CsmMoveResourceEnvelope = Azure::ARM::Web::Api_2016_03_01::Models::CsmMoveResourceEnvelope
      DeletedSite = Azure::ARM::Web::Api_2016_03_01::Models::DeletedSite
      CsmOperationDisplay = Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDisplay
      GeoRegionCollection = Azure::ARM::Web::Api_2016_03_01::Models::GeoRegionCollection
      MetricAvailability = Azure::ARM::Web::Api_2016_03_01::Models::MetricAvailability
      ServiceSpecification = Azure::ARM::Web::Api_2016_03_01::Models::ServiceSpecification
      GlobalCsmSkuDescription = Azure::ARM::Web::Api_2016_03_01::Models::GlobalCsmSkuDescription
      CsmOperationDescription = Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDescription
      ValidateResponse = Azure::ARM::Web::Api_2016_03_01::Models::ValidateResponse
      Recommendation = Azure::ARM::Web::Api_2016_03_01::Models::Recommendation
      PremierAddOnOfferCollection = Azure::ARM::Web::Api_2016_03_01::Models::PremierAddOnOfferCollection
      Dimension = Azure::ARM::Web::Api_2016_03_01::Models::Dimension
      ResourceNameAvailability = Azure::ARM::Web::Api_2016_03_01::Models::ResourceNameAvailability
      CsmOperationDescriptionProperties = Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDescriptionProperties
      ResourceNameAvailabilityRequest = Azure::ARM::Web::Api_2016_03_01::Models::ResourceNameAvailabilityRequest
      ValidateRequest = Azure::ARM::Web::Api_2016_03_01::Models::ValidateRequest
      DeletedWebAppCollection = Azure::ARM::Web::Api_2016_03_01::Models::DeletedWebAppCollection
      SkuInfos = Azure::ARM::Web::Api_2016_03_01::Models::SkuInfos
      CsmOperationCollection = Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationCollection
      ValidateResponseError = Azure::ARM::Web::Api_2016_03_01::Models::ValidateResponseError
      MetricSpecification = Azure::ARM::Web::Api_2016_03_01::Models::MetricSpecification
      SourceControlCollection = Azure::ARM::Web::Api_2016_03_01::Models::SourceControlCollection
      Certificate = Azure::ARM::Web::Api_2016_03_01::Models::Certificate
      GeoRegion = Azure::ARM::Web::Api_2016_03_01::Models::GeoRegion
      PremierAddOnOffer = Azure::ARM::Web::Api_2016_03_01::Models::PremierAddOnOffer
      SourceControl = Azure::ARM::Web::Api_2016_03_01::Models::SourceControl
      VnetParameters = Azure::ARM::Web::Api_2016_03_01::Models::VnetParameters
      VnetValidationTestFailure = Azure::ARM::Web::Api_2016_03_01::Models::VnetValidationTestFailure
      VnetValidationFailureDetails = Azure::ARM::Web::Api_2016_03_01::Models::VnetValidationFailureDetails
      KeyVaultSecretStatus = Azure::ARM::Web::Api_2016_03_01::Models::KeyVaultSecretStatus
      ResourceScopeType = Azure::ARM::Web::Api_2016_03_01::Models::ResourceScopeType
      NotificationLevel = Azure::ARM::Web::Api_2016_03_01::Models::NotificationLevel
      Channels = Azure::ARM::Web::Api_2016_03_01::Models::Channels
      AppServicePlanRestrictions = Azure::ARM::Web::Api_2016_03_01::Models::AppServicePlanRestrictions
      InAvailabilityReasonType = Azure::ARM::Web::Api_2016_03_01::Models::InAvailabilityReasonType
      CheckNameResourceTypes = Azure::ARM::Web::Api_2016_03_01::Models::CheckNameResourceTypes
      ValidateResourceTypes = Azure::ARM::Web::Api_2016_03_01::Models::ValidateResourceTypes
      SkuName = Azure::ARM::Web::Api_2016_03_01::Models::SkuName
      PerfMonSet = Azure::ARM::Web::Api_2016_08_01::Models::PerfMonSet
      PerfMonResponse = Azure::ARM::Web::Api_2016_08_01::Models::PerfMonResponse
      AzureTableStorageApplicationLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::AzureTableStorageApplicationLogsConfig
      PerfMonCounterCollection = Azure::ARM::Web::Api_2016_08_01::Models::PerfMonCounterCollection
      ApplicationLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::ApplicationLogsConfig
      HttpLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::HttpLogsConfig
      SlotDifferenceCollection = Azure::ARM::Web::Api_2016_08_01::Models::SlotDifferenceCollection
      SiteExtensionInfoCollection = Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionInfoCollection
      IdentifierCollection = Azure::ARM::Web::Api_2016_08_01::Models::IdentifierCollection
      DatabaseBackupSetting = Azure::ARM::Web::Api_2016_08_01::Models::DatabaseBackupSetting
      BackupItemCollection = Azure::ARM::Web::Api_2016_08_01::Models::BackupItemCollection
      SiteCloneabilityCriterion = Azure::ARM::Web::Api_2016_08_01::Models::SiteCloneabilityCriterion
      AzureBlobStorageHttpLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::AzureBlobStorageHttpLogsConfig
      ConnStringValueTypePair = Azure::ARM::Web::Api_2016_08_01::Models::ConnStringValueTypePair
      SnapshotCollection = Azure::ARM::Web::Api_2016_08_01::Models::SnapshotCollection
      BackupSchedule = Azure::ARM::Web::Api_2016_08_01::Models::BackupSchedule
      CsmSlotEntity = Azure::ARM::Web::Api_2016_08_01::Models::CsmSlotEntity
      MSDeployLogEntry = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLogEntry
      SiteCloneability = Azure::ARM::Web::Api_2016_08_01::Models::SiteCloneability
      SiteConfigResourceCollection = Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigResourceCollection
      EnabledConfig = Azure::ARM::Web::Api_2016_08_01::Models::EnabledConfig
      PerfMonSample = Azure::ARM::Web::Api_2016_08_01::Models::PerfMonSample
      ContinuousWebJobCollection = Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJobCollection
      FileSystemApplicationLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::FileSystemApplicationLogsConfig
      AzureBlobStorageApplicationLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
      FunctionEnvelopeCollection = Azure::ARM::Web::Api_2016_08_01::Models::FunctionEnvelopeCollection
      WebJobCollection = Azure::ARM::Web::Api_2016_08_01::Models::WebJobCollection
      HostNameBindingCollection = Azure::ARM::Web::Api_2016_08_01::Models::HostNameBindingCollection
      WebAppInstanceCollection = Azure::ARM::Web::Api_2016_08_01::Models::WebAppInstanceCollection
      CsmPublishingProfileOptions = Azure::ARM::Web::Api_2016_08_01::Models::CsmPublishingProfileOptions
      ProcessInfoCollection = Azure::ARM::Web::Api_2016_08_01::Models::ProcessInfoCollection
      DeploymentCollection = Azure::ARM::Web::Api_2016_08_01::Models::DeploymentCollection
      ProcessModuleInfoCollection = Azure::ARM::Web::Api_2016_08_01::Models::ProcessModuleInfoCollection
      ProcessThreadInfoCollection = Azure::ARM::Web::Api_2016_08_01::Models::ProcessThreadInfoCollection
      FileSystemHttpLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::FileSystemHttpLogsConfig
      TriggeredWebJobCollection = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJobCollection
      PublicCertificateCollection = Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificateCollection
      TriggeredJobHistoryCollection = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobHistoryCollection
      BackupItem = Azure::ARM::Web::Api_2016_08_01::Models::BackupItem
      BackupRequest = Azure::ARM::Web::Api_2016_08_01::Models::BackupRequest
      ConnectionStringDictionary = Azure::ARM::Web::Api_2016_08_01::Models::ConnectionStringDictionary
      ContinuousWebJob = Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJob
      CustomHostnameAnalysisResult = Azure::ARM::Web::Api_2016_08_01::Models::CustomHostnameAnalysisResult
      Deployment = Azure::ARM::Web::Api_2016_08_01::Models::Deployment
      FunctionEnvelope = Azure::ARM::Web::Api_2016_08_01::Models::FunctionEnvelope
      FunctionSecrets = Azure::ARM::Web::Api_2016_08_01::Models::FunctionSecrets
      HostNameBinding = Azure::ARM::Web::Api_2016_08_01::Models::HostNameBinding
      Identifier = Azure::ARM::Web::Api_2016_08_01::Models::Identifier
      MSDeploy = Azure::ARM::Web::Api_2016_08_01::Models::MSDeploy
      MSDeployLog = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLog
      MSDeployStatus = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployStatus
      MigrateMySqlRequest = Azure::ARM::Web::Api_2016_08_01::Models::MigrateMySqlRequest
      MigrateMySqlStatus = Azure::ARM::Web::Api_2016_08_01::Models::MigrateMySqlStatus
      RelayServiceConnectionEntity = Azure::ARM::Web::Api_2016_08_01::Models::RelayServiceConnectionEntity
      NetworkFeatures = Azure::ARM::Web::Api_2016_08_01::Models::NetworkFeatures
      PremierAddOn = Azure::ARM::Web::Api_2016_08_01::Models::PremierAddOn
      ProcessThreadInfo = Azure::ARM::Web::Api_2016_08_01::Models::ProcessThreadInfo
      ProcessModuleInfo = Azure::ARM::Web::Api_2016_08_01::Models::ProcessModuleInfo
      ProcessInfo = Azure::ARM::Web::Api_2016_08_01::Models::ProcessInfo
      PublicCertificate = Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificate
      RestoreRequest = Azure::ARM::Web::Api_2016_08_01::Models::RestoreRequest
      RestoreResponse = Azure::ARM::Web::Api_2016_08_01::Models::RestoreResponse
      SiteAuthSettings = Azure::ARM::Web::Api_2016_08_01::Models::SiteAuthSettings
      SiteConfigResource = Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigResource
      SiteConfigurationSnapshotInfo = Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigurationSnapshotInfo
      SiteExtensionInfo = Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionInfo
      SiteInstance = Azure::ARM::Web::Api_2016_08_01::Models::SiteInstance
      SiteLogsConfig = Azure::ARM::Web::Api_2016_08_01::Models::SiteLogsConfig
      SitePhpErrorLogFlag = Azure::ARM::Web::Api_2016_08_01::Models::SitePhpErrorLogFlag
      SiteSourceControl = Azure::ARM::Web::Api_2016_08_01::Models::SiteSourceControl
      SlotConfigNamesResource = Azure::ARM::Web::Api_2016_08_01::Models::SlotConfigNamesResource
      SlotDifference = Azure::ARM::Web::Api_2016_08_01::Models::SlotDifference
      Snapshot = Azure::ARM::Web::Api_2016_08_01::Models::Snapshot
      StorageMigrationOptions = Azure::ARM::Web::Api_2016_08_01::Models::StorageMigrationOptions
      StorageMigrationResponse = Azure::ARM::Web::Api_2016_08_01::Models::StorageMigrationResponse
      StringDictionary = Azure::ARM::Web::Api_2016_08_01::Models::StringDictionary
      TriggeredJobRun = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobRun
      TriggeredJobHistory = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobHistory
      TriggeredWebJob = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJob
      User = Azure::ARM::Web::Api_2016_08_01::Models::User
      WebJob = Azure::ARM::Web::Api_2016_08_01::Models::WebJob
      LogLevel = Azure::ARM::Web::Api_2016_08_01::Models::LogLevel
      BackupItemStatus = Azure::ARM::Web::Api_2016_08_01::Models::BackupItemStatus
      DatabaseType = Azure::ARM::Web::Api_2016_08_01::Models::DatabaseType
      FrequencyUnit = Azure::ARM::Web::Api_2016_08_01::Models::FrequencyUnit
      BackupRestoreOperationType = Azure::ARM::Web::Api_2016_08_01::Models::BackupRestoreOperationType
      ContinuousWebJobStatus = Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJobStatus
      WebJobType = Azure::ARM::Web::Api_2016_08_01::Models::WebJobType
      PublishingProfileFormat = Azure::ARM::Web::Api_2016_08_01::Models::PublishingProfileFormat
      DnsVerificationTestResult = Azure::ARM::Web::Api_2016_08_01::Models::DnsVerificationTestResult
      AzureResourceType = Azure::ARM::Web::Api_2016_08_01::Models::AzureResourceType
      CustomHostNameDnsRecordType = Azure::ARM::Web::Api_2016_08_01::Models::CustomHostNameDnsRecordType
      HostNameType = Azure::ARM::Web::Api_2016_08_01::Models::HostNameType
      MSDeployLogEntryType = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLogEntryType
      MSDeployProvisioningState = Azure::ARM::Web::Api_2016_08_01::Models::MSDeployProvisioningState
      MySqlMigrationType = Azure::ARM::Web::Api_2016_08_01::Models::MySqlMigrationType
      PublicCertificateLocation = Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificateLocation
      UnauthenticatedClientAction = Azure::ARM::Web::Api_2016_08_01::Models::UnauthenticatedClientAction
      BuiltInAuthenticationProvider = Azure::ARM::Web::Api_2016_08_01::Models::BuiltInAuthenticationProvider
      CloneAbilityResult = Azure::ARM::Web::Api_2016_08_01::Models::CloneAbilityResult
      SiteExtensionType = Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionType
      TriggeredWebJobStatus = Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJobStatus
      RampUpRule = Azure::ARM::Web::Api_2016_09_01::Models::RampUpRule
      Experiments = Azure::ARM::Web::Api_2016_09_01::Models::Experiments
      AddressResponse = Azure::ARM::Web::Api_2016_09_01::Models::AddressResponse
      HandlerMapping = Azure::ARM::Web::Api_2016_09_01::Models::HandlerMapping
      VirtualNetworkProfile = Azure::ARM::Web::Api_2016_09_01::Models::VirtualNetworkProfile
      HostNameSslState = Azure::ARM::Web::Api_2016_09_01::Models::HostNameSslState
      StampCapacity = Azure::ARM::Web::Api_2016_09_01::Models::StampCapacity
      HostingEnvironmentDiagnostics = Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentDiagnostics
      NameValuePair = Azure::ARM::Web::Api_2016_09_01::Models::NameValuePair
      IpSecurityRestriction = Azure::ARM::Web::Api_2016_09_01::Models::IpSecurityRestriction
      AppServiceEnvironmentCollection = Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironmentCollection
      MetricAvailabilily = Azure::ARM::Web::Api_2016_09_01::Models::MetricAvailabilily
      HostingEnvironmentProfile = Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentProfile
      Capability = Azure::ARM::Web::Api_2016_09_01::Models::Capability
      Operation = Azure::ARM::Web::Api_2016_09_01::Models::Operation
      UsageCollection = Azure::ARM::Web::Api_2016_09_01::Models::UsageCollection
      AppServicePlanCollection = Azure::ARM::Web::Api_2016_09_01::Models::AppServicePlanCollection
      ProxyOnlyResource = Azure::ARM::Web::Api_2016_09_01::Models::ProxyOnlyResource
      AutoHealActions = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealActions
      ResourceCollection = Azure::ARM::Web::Api_2016_09_01::Models::ResourceCollection
      StatusCodesBasedTrigger = Azure::ARM::Web::Api_2016_09_01::Models::StatusCodesBasedTrigger
      Resource = Azure::ARM::Web::Api_2016_09_01::Models::Resource
      AutoHealTriggers = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealTriggers
      ResourceMetricName = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricName
      CloningInfo = Azure::ARM::Web::Api_2016_09_01::Models::CloningInfo
      ResourceMetricProperty = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricProperty
      CorsSettings = Azure::ARM::Web::Api_2016_09_01::Models::CorsSettings
      ResourceMetricValue = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricValue
      CsmUsageQuota = Azure::ARM::Web::Api_2016_09_01::Models::CsmUsageQuota
      ResourceMetric = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetric
      ErrorEntity = Azure::ARM::Web::Api_2016_09_01::Models::ErrorEntity
      ResourceMetricAvailability = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricAvailability
      ApiDefinitionInfo = Azure::ARM::Web::Api_2016_09_01::Models::ApiDefinitionInfo
      ResourceMetricCollection = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricCollection
      NetworkAccessControlEntry = Azure::ARM::Web::Api_2016_09_01::Models::NetworkAccessControlEntry
      HybridConnectionCollection = Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionCollection
      StampCapacityCollection = Azure::ARM::Web::Api_2016_09_01::Models::StampCapacityCollection
      SkuCapacity = Azure::ARM::Web::Api_2016_09_01::Models::SkuCapacity
      ResourceMetricDefinitionCollection = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricDefinitionCollection
      AutoHealCustomAction = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealCustomAction
      SiteMachineKey = Azure::ARM::Web::Api_2016_09_01::Models::SiteMachineKey
      SlowRequestsBasedTrigger = Azure::ARM::Web::Api_2016_09_01::Models::SlowRequestsBasedTrigger
      VirtualDirectory = Azure::ARM::Web::Api_2016_09_01::Models::VirtualDirectory
      ConnStringInfo = Azure::ARM::Web::Api_2016_09_01::Models::ConnStringInfo
      VirtualApplication = Azure::ARM::Web::Api_2016_09_01::Models::VirtualApplication
      CsmUsageQuotaCollection = Azure::ARM::Web::Api_2016_09_01::Models::CsmUsageQuotaCollection
      SiteLimits = Azure::ARM::Web::Api_2016_09_01::Models::SiteLimits
      WorkerPool = Azure::ARM::Web::Api_2016_09_01::Models::WorkerPool
      SiteConfig = Azure::ARM::Web::Api_2016_09_01::Models::SiteConfig
      SkuDescription = Azure::ARM::Web::Api_2016_09_01::Models::SkuDescription
      SnapshotRecoveryTarget = Azure::ARM::Web::Api_2016_09_01::Models::SnapshotRecoveryTarget
      AutoHealRules = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealRules
      WorkerPoolCollection = Azure::ARM::Web::Api_2016_09_01::Models::WorkerPoolCollection
      VirtualIPMapping = Azure::ARM::Web::Api_2016_09_01::Models::VirtualIPMapping
      SlotSwapStatus = Azure::ARM::Web::Api_2016_09_01::Models::SlotSwapStatus
      RequestsBasedTrigger = Azure::ARM::Web::Api_2016_09_01::Models::RequestsBasedTrigger
      WebAppCollection = Azure::ARM::Web::Api_2016_09_01::Models::WebAppCollection
      AppServiceEnvironment = Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironment
      SkuInfo = Azure::ARM::Web::Api_2016_09_01::Models::SkuInfo
      LocalizableString = Azure::ARM::Web::Api_2016_09_01::Models::LocalizableString
      SkuInfoCollection = Azure::ARM::Web::Api_2016_09_01::Models::SkuInfoCollection
      AppServiceEnvironmentResource = Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironmentResource
      AppServicePlan = Azure::ARM::Web::Api_2016_09_01::Models::AppServicePlan
      MetricDefinition = Azure::ARM::Web::Api_2016_09_01::Models::MetricDefinition
      PushSettings = Azure::ARM::Web::Api_2016_09_01::Models::PushSettings
      ResourceMetricDefinition = Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricDefinition
      SnapshotRecoveryRequest = Azure::ARM::Web::Api_2016_09_01::Models::SnapshotRecoveryRequest
      Site = Azure::ARM::Web::Api_2016_09_01::Models::Site
      Usage = Azure::ARM::Web::Api_2016_09_01::Models::Usage
      WorkerPoolResource = Azure::ARM::Web::Api_2016_09_01::Models::WorkerPoolResource
      HybridConnection = Azure::ARM::Web::Api_2016_09_01::Models::HybridConnection
      HybridConnectionKey = Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionKey
      HybridConnectionLimits = Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionLimits
      VnetGateway = Azure::ARM::Web::Api_2016_09_01::Models::VnetGateway
      VnetRoute = Azure::ARM::Web::Api_2016_09_01::Models::VnetRoute
      VnetInfo = Azure::ARM::Web::Api_2016_09_01::Models::VnetInfo
      ProvisioningState = Azure::ARM::Web::Api_2016_09_01::Models::ProvisioningState
      HostingEnvironmentStatus = Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentStatus
      InternalLoadBalancingMode = Azure::ARM::Web::Api_2016_09_01::Models::InternalLoadBalancingMode
      ComputeModeOptions = Azure::ARM::Web::Api_2016_09_01::Models::ComputeModeOptions
      WorkerSizeOptions = Azure::ARM::Web::Api_2016_09_01::Models::WorkerSizeOptions
      AccessControlEntryAction = Azure::ARM::Web::Api_2016_09_01::Models::AccessControlEntryAction
      StatusOptions = Azure::ARM::Web::Api_2016_09_01::Models::StatusOptions
      AutoHealActionType = Azure::ARM::Web::Api_2016_09_01::Models::AutoHealActionType
      ConnectionStringType = Azure::ARM::Web::Api_2016_09_01::Models::ConnectionStringType
      SslState = Azure::ARM::Web::Api_2016_09_01::Models::SslState
      HostType = Azure::ARM::Web::Api_2016_09_01::Models::HostType
      OperationStatus = Azure::ARM::Web::Api_2016_09_01::Models::OperationStatus
      UsageState = Azure::ARM::Web::Api_2016_09_01::Models::UsageState
      SiteAvailabilityState = Azure::ARM::Web::Api_2016_09_01::Models::SiteAvailabilityState
      ScmType = Azure::ARM::Web::Api_2016_09_01::Models::ScmType
      ManagedPipelineMode = Azure::ARM::Web::Api_2016_09_01::Models::ManagedPipelineMode
      SiteLoadBalancing = Azure::ARM::Web::Api_2016_09_01::Models::SiteLoadBalancing
      RouteType = Azure::ARM::Web::Api_2016_09_01::Models::RouteType
    end

    #
    # Web
    #
    class WebClass
      attr_reader :domains, :top_level_domains, :app_service_certificate_orders, :certificates, :deleted_web_apps, :provider, :recommendations, :web_apps, :app_service_environments, :app_service_plans, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Web::Api_2015_04_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @domains = client_0.domains
        @top_level_domains = client_0.top_level_domains

        client_1 = Azure::ARM::Web::Api_2015_08_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client_1.respond_to?(:subscription_id))
          client_1.subscription_id = configurable.subscription_id
        end
        @app_service_certificate_orders = client_1.app_service_certificate_orders

        client_2 = Azure::ARM::Web::Api_2016_03_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client_2.respond_to?(:subscription_id))
          client_2.subscription_id = configurable.subscription_id
        end
        @certificates = client_2.certificates
        @deleted_web_apps = client_2.deleted_web_apps
        @provider = client_2.provider
        @recommendations = client_2.recommendations

        client_3 = Azure::ARM::Web::Api_2016_08_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client_3.respond_to?(:subscription_id))
          client_3.subscription_id = configurable.subscription_id
        end
        @web_apps = client_3.web_apps

        client_4 = Azure::ARM::Web::Api_2016_09_01::WebSiteManagementClient.new(configurable.credentials, base_url, options)
        if(client_4.respond_to?(:subscription_id))
          client_4.subscription_id = configurable.subscription_id
        end
        @app_service_environments = client_4.app_service_environments
        @app_service_plans = client_4.app_service_plans

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-09-01')
        case version
          when '2015-04-01'
            client = Azure::ARM::Web::Api_2015_04_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2015-08-01'
            client = Azure::ARM::Web::Api_2015_08_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2016-03-01'
            client = Azure::ARM::Web::Api_2016_03_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2016-08-01'
            client = Azure::ARM::Web::Api_2016_08_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          when '2016-09-01'
            client = Azure::ARM::Web::Api_2016_09_01::WebSiteManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def domain_recommendation_search_parameters
          Azure::ARM::Web::Api_2015_04_01::Models::DomainRecommendationSearchParameters
        end
        def address
          Azure::ARM::Web::Api_2015_04_01::Models::Address
        end
        def host_name
          Azure::ARM::Web::Api_2015_04_01::Models::HostName
        end
        def name_identifier_collection
          Azure::ARM::Web::Api_2015_04_01::Models::NameIdentifierCollection
        end
        def domain_purchase_consent
          Azure::ARM::Web::Api_2015_04_01::Models::DomainPurchaseConsent
        end
        def domain_availablility_check_result
          Azure::ARM::Web::Api_2015_04_01::Models::DomainAvailablilityCheckResult
        end
        def top_level_domain_collection
          Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomainCollection
        end
        def domain_control_center_sso_request
          Azure::ARM::Web::Api_2015_04_01::Models::DomainControlCenterSsoRequest
        end
        def domain_ownership_identifier_collection
          Azure::ARM::Web::Api_2015_04_01::Models::DomainOwnershipIdentifierCollection
        end
        def domain_collection
          Azure::ARM::Web::Api_2015_04_01::Models::DomainCollection
        end
        def tld_legal_agreement
          Azure::ARM::Web::Api_2015_04_01::Models::TldLegalAgreement
        end
        def contact
          Azure::ARM::Web::Api_2015_04_01::Models::Contact
        end
        def tld_legal_agreement_collection
          Azure::ARM::Web::Api_2015_04_01::Models::TldLegalAgreementCollection
        end
        def top_level_domain_agreement_option
          Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomainAgreementOption
        end
        def domain
          Azure::ARM::Web::Api_2015_04_01::Models::Domain
        end
        def domain_ownership_identifier
          Azure::ARM::Web::Api_2015_04_01::Models::DomainOwnershipIdentifier
        end
        def top_level_domain
          Azure::ARM::Web::Api_2015_04_01::Models::TopLevelDomain
        end
        def domain_status
          Azure::ARM::Web::Api_2015_04_01::Models::DomainStatus
        end
        def dns_type
          Azure::ARM::Web::Api_2015_04_01::Models::DnsType
        end
        def domain_type
          Azure::ARM::Web::Api_2015_04_01::Models::DomainType
        end
        def app_service_certificate_order_collection
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateOrderCollection
        end
        def app_service_certificate
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificate
        end
        def site_seal_request
          Azure::ARM::Web::Api_2015_08_01::Models::SiteSealRequest
        end
        def certificate_details
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateDetails
        end
        def app_service_certificate_collection
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateCollection
        end
        def name_identifier
          Azure::ARM::Web::Api_2015_08_01::Models::NameIdentifier
        end
        def site_seal
          Azure::ARM::Web::Api_2015_08_01::Models::SiteSeal
        end
        def app_service_certificate_resource
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateResource
        end
        def app_service_certificate_order
          Azure::ARM::Web::Api_2015_08_01::Models::AppServiceCertificateOrder
        end
        def certificate_email
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateEmail
        end
        def certificate_order_action
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderAction
        end
        def reissue_certificate_order_request
          Azure::ARM::Web::Api_2015_08_01::Models::ReissueCertificateOrderRequest
        end
        def renew_certificate_order_request
          Azure::ARM::Web::Api_2015_08_01::Models::RenewCertificateOrderRequest
        end
        def certificate_product_type
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateProductType
        end
        def certificate_order_status
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderStatus
        end
        def certificate_order_action_type
          Azure::ARM::Web::Api_2015_08_01::Models::CertificateOrderActionType
        end
        def recommendation_rule
          Azure::ARM::Web::Api_2016_03_01::Models::RecommendationRule
        end
        def certificate_collection
          Azure::ARM::Web::Api_2016_03_01::Models::CertificateCollection
        end
        def csm_move_resource_envelope
          Azure::ARM::Web::Api_2016_03_01::Models::CsmMoveResourceEnvelope
        end
        def deleted_site
          Azure::ARM::Web::Api_2016_03_01::Models::DeletedSite
        end
        def csm_operation_display
          Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDisplay
        end
        def geo_region_collection
          Azure::ARM::Web::Api_2016_03_01::Models::GeoRegionCollection
        end
        def metric_availability
          Azure::ARM::Web::Api_2016_03_01::Models::MetricAvailability
        end
        def service_specification
          Azure::ARM::Web::Api_2016_03_01::Models::ServiceSpecification
        end
        def global_csm_sku_description
          Azure::ARM::Web::Api_2016_03_01::Models::GlobalCsmSkuDescription
        end
        def csm_operation_description
          Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDescription
        end
        def validate_response
          Azure::ARM::Web::Api_2016_03_01::Models::ValidateResponse
        end
        def recommendation
          Azure::ARM::Web::Api_2016_03_01::Models::Recommendation
        end
        def premier_add_on_offer_collection
          Azure::ARM::Web::Api_2016_03_01::Models::PremierAddOnOfferCollection
        end
        def dimension
          Azure::ARM::Web::Api_2016_03_01::Models::Dimension
        end
        def resource_name_availability
          Azure::ARM::Web::Api_2016_03_01::Models::ResourceNameAvailability
        end
        def csm_operation_description_properties
          Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationDescriptionProperties
        end
        def resource_name_availability_request
          Azure::ARM::Web::Api_2016_03_01::Models::ResourceNameAvailabilityRequest
        end
        def validate_request
          Azure::ARM::Web::Api_2016_03_01::Models::ValidateRequest
        end
        def deleted_web_app_collection
          Azure::ARM::Web::Api_2016_03_01::Models::DeletedWebAppCollection
        end
        def sku_infos
          Azure::ARM::Web::Api_2016_03_01::Models::SkuInfos
        end
        def csm_operation_collection
          Azure::ARM::Web::Api_2016_03_01::Models::CsmOperationCollection
        end
        def validate_response_error
          Azure::ARM::Web::Api_2016_03_01::Models::ValidateResponseError
        end
        def metric_specification
          Azure::ARM::Web::Api_2016_03_01::Models::MetricSpecification
        end
        def source_control_collection
          Azure::ARM::Web::Api_2016_03_01::Models::SourceControlCollection
        end
        def certificate
          Azure::ARM::Web::Api_2016_03_01::Models::Certificate
        end
        def geo_region
          Azure::ARM::Web::Api_2016_03_01::Models::GeoRegion
        end
        def premier_add_on_offer
          Azure::ARM::Web::Api_2016_03_01::Models::PremierAddOnOffer
        end
        def source_control
          Azure::ARM::Web::Api_2016_03_01::Models::SourceControl
        end
        def vnet_parameters
          Azure::ARM::Web::Api_2016_03_01::Models::VnetParameters
        end
        def vnet_validation_test_failure
          Azure::ARM::Web::Api_2016_03_01::Models::VnetValidationTestFailure
        end
        def vnet_validation_failure_details
          Azure::ARM::Web::Api_2016_03_01::Models::VnetValidationFailureDetails
        end
        def key_vault_secret_status
          Azure::ARM::Web::Api_2016_03_01::Models::KeyVaultSecretStatus
        end
        def resource_scope_type
          Azure::ARM::Web::Api_2016_03_01::Models::ResourceScopeType
        end
        def notification_level
          Azure::ARM::Web::Api_2016_03_01::Models::NotificationLevel
        end
        def channels
          Azure::ARM::Web::Api_2016_03_01::Models::Channels
        end
        def app_service_plan_restrictions
          Azure::ARM::Web::Api_2016_03_01::Models::AppServicePlanRestrictions
        end
        def in_availability_reason_type
          Azure::ARM::Web::Api_2016_03_01::Models::InAvailabilityReasonType
        end
        def check_name_resource_types
          Azure::ARM::Web::Api_2016_03_01::Models::CheckNameResourceTypes
        end
        def validate_resource_types
          Azure::ARM::Web::Api_2016_03_01::Models::ValidateResourceTypes
        end
        def sku_name
          Azure::ARM::Web::Api_2016_03_01::Models::SkuName
        end
        def perf_mon_set
          Azure::ARM::Web::Api_2016_08_01::Models::PerfMonSet
        end
        def perf_mon_response
          Azure::ARM::Web::Api_2016_08_01::Models::PerfMonResponse
        end
        def azure_table_storage_application_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::AzureTableStorageApplicationLogsConfig
        end
        def perf_mon_counter_collection
          Azure::ARM::Web::Api_2016_08_01::Models::PerfMonCounterCollection
        end
        def application_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::ApplicationLogsConfig
        end
        def http_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::HttpLogsConfig
        end
        def slot_difference_collection
          Azure::ARM::Web::Api_2016_08_01::Models::SlotDifferenceCollection
        end
        def site_extension_info_collection
          Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionInfoCollection
        end
        def identifier_collection
          Azure::ARM::Web::Api_2016_08_01::Models::IdentifierCollection
        end
        def database_backup_setting
          Azure::ARM::Web::Api_2016_08_01::Models::DatabaseBackupSetting
        end
        def backup_item_collection
          Azure::ARM::Web::Api_2016_08_01::Models::BackupItemCollection
        end
        def site_cloneability_criterion
          Azure::ARM::Web::Api_2016_08_01::Models::SiteCloneabilityCriterion
        end
        def azure_blob_storage_http_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::AzureBlobStorageHttpLogsConfig
        end
        def conn_string_value_type_pair
          Azure::ARM::Web::Api_2016_08_01::Models::ConnStringValueTypePair
        end
        def snapshot_collection
          Azure::ARM::Web::Api_2016_08_01::Models::SnapshotCollection
        end
        def backup_schedule
          Azure::ARM::Web::Api_2016_08_01::Models::BackupSchedule
        end
        def csm_slot_entity
          Azure::ARM::Web::Api_2016_08_01::Models::CsmSlotEntity
        end
        def msdeploy_log_entry
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLogEntry
        end
        def site_cloneability
          Azure::ARM::Web::Api_2016_08_01::Models::SiteCloneability
        end
        def site_config_resource_collection
          Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigResourceCollection
        end
        def enabled_config
          Azure::ARM::Web::Api_2016_08_01::Models::EnabledConfig
        end
        def perf_mon_sample
          Azure::ARM::Web::Api_2016_08_01::Models::PerfMonSample
        end
        def continuous_web_job_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJobCollection
        end
        def file_system_application_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::FileSystemApplicationLogsConfig
        end
        def azure_blob_storage_application_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::AzureBlobStorageApplicationLogsConfig
        end
        def function_envelope_collection
          Azure::ARM::Web::Api_2016_08_01::Models::FunctionEnvelopeCollection
        end
        def web_job_collection
          Azure::ARM::Web::Api_2016_08_01::Models::WebJobCollection
        end
        def host_name_binding_collection
          Azure::ARM::Web::Api_2016_08_01::Models::HostNameBindingCollection
        end
        def web_app_instance_collection
          Azure::ARM::Web::Api_2016_08_01::Models::WebAppInstanceCollection
        end
        def csm_publishing_profile_options
          Azure::ARM::Web::Api_2016_08_01::Models::CsmPublishingProfileOptions
        end
        def process_info_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessInfoCollection
        end
        def deployment_collection
          Azure::ARM::Web::Api_2016_08_01::Models::DeploymentCollection
        end
        def process_module_info_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessModuleInfoCollection
        end
        def process_thread_info_collection
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessThreadInfoCollection
        end
        def file_system_http_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::FileSystemHttpLogsConfig
        end
        def triggered_web_job_collection
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJobCollection
        end
        def public_certificate_collection
          Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificateCollection
        end
        def triggered_job_history_collection
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobHistoryCollection
        end
        def backup_item
          Azure::ARM::Web::Api_2016_08_01::Models::BackupItem
        end
        def backup_request
          Azure::ARM::Web::Api_2016_08_01::Models::BackupRequest
        end
        def connection_string_dictionary
          Azure::ARM::Web::Api_2016_08_01::Models::ConnectionStringDictionary
        end
        def continuous_web_job
          Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJob
        end
        def custom_hostname_analysis_result
          Azure::ARM::Web::Api_2016_08_01::Models::CustomHostnameAnalysisResult
        end
        def deployment
          Azure::ARM::Web::Api_2016_08_01::Models::Deployment
        end
        def function_envelope
          Azure::ARM::Web::Api_2016_08_01::Models::FunctionEnvelope
        end
        def function_secrets
          Azure::ARM::Web::Api_2016_08_01::Models::FunctionSecrets
        end
        def host_name_binding
          Azure::ARM::Web::Api_2016_08_01::Models::HostNameBinding
        end
        def identifier
          Azure::ARM::Web::Api_2016_08_01::Models::Identifier
        end
        def msdeploy
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeploy
        end
        def msdeploy_log
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLog
        end
        def msdeploy_status
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployStatus
        end
        def migrate_my_sql_request
          Azure::ARM::Web::Api_2016_08_01::Models::MigrateMySqlRequest
        end
        def migrate_my_sql_status
          Azure::ARM::Web::Api_2016_08_01::Models::MigrateMySqlStatus
        end
        def relay_service_connection_entity
          Azure::ARM::Web::Api_2016_08_01::Models::RelayServiceConnectionEntity
        end
        def network_features
          Azure::ARM::Web::Api_2016_08_01::Models::NetworkFeatures
        end
        def premier_add_on
          Azure::ARM::Web::Api_2016_08_01::Models::PremierAddOn
        end
        def process_thread_info
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessThreadInfo
        end
        def process_module_info
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessModuleInfo
        end
        def process_info
          Azure::ARM::Web::Api_2016_08_01::Models::ProcessInfo
        end
        def public_certificate
          Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificate
        end
        def restore_request
          Azure::ARM::Web::Api_2016_08_01::Models::RestoreRequest
        end
        def restore_response
          Azure::ARM::Web::Api_2016_08_01::Models::RestoreResponse
        end
        def site_auth_settings
          Azure::ARM::Web::Api_2016_08_01::Models::SiteAuthSettings
        end
        def site_config_resource
          Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigResource
        end
        def site_configuration_snapshot_info
          Azure::ARM::Web::Api_2016_08_01::Models::SiteConfigurationSnapshotInfo
        end
        def site_extension_info
          Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionInfo
        end
        def site_instance
          Azure::ARM::Web::Api_2016_08_01::Models::SiteInstance
        end
        def site_logs_config
          Azure::ARM::Web::Api_2016_08_01::Models::SiteLogsConfig
        end
        def site_php_error_log_flag
          Azure::ARM::Web::Api_2016_08_01::Models::SitePhpErrorLogFlag
        end
        def site_source_control
          Azure::ARM::Web::Api_2016_08_01::Models::SiteSourceControl
        end
        def slot_config_names_resource
          Azure::ARM::Web::Api_2016_08_01::Models::SlotConfigNamesResource
        end
        def slot_difference
          Azure::ARM::Web::Api_2016_08_01::Models::SlotDifference
        end
        def snapshot
          Azure::ARM::Web::Api_2016_08_01::Models::Snapshot
        end
        def storage_migration_options
          Azure::ARM::Web::Api_2016_08_01::Models::StorageMigrationOptions
        end
        def storage_migration_response
          Azure::ARM::Web::Api_2016_08_01::Models::StorageMigrationResponse
        end
        def string_dictionary
          Azure::ARM::Web::Api_2016_08_01::Models::StringDictionary
        end
        def triggered_job_run
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobRun
        end
        def triggered_job_history
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredJobHistory
        end
        def triggered_web_job
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJob
        end
        def user
          Azure::ARM::Web::Api_2016_08_01::Models::User
        end
        def web_job
          Azure::ARM::Web::Api_2016_08_01::Models::WebJob
        end
        def log_level
          Azure::ARM::Web::Api_2016_08_01::Models::LogLevel
        end
        def backup_item_status
          Azure::ARM::Web::Api_2016_08_01::Models::BackupItemStatus
        end
        def database_type
          Azure::ARM::Web::Api_2016_08_01::Models::DatabaseType
        end
        def frequency_unit
          Azure::ARM::Web::Api_2016_08_01::Models::FrequencyUnit
        end
        def backup_restore_operation_type
          Azure::ARM::Web::Api_2016_08_01::Models::BackupRestoreOperationType
        end
        def continuous_web_job_status
          Azure::ARM::Web::Api_2016_08_01::Models::ContinuousWebJobStatus
        end
        def web_job_type
          Azure::ARM::Web::Api_2016_08_01::Models::WebJobType
        end
        def publishing_profile_format
          Azure::ARM::Web::Api_2016_08_01::Models::PublishingProfileFormat
        end
        def dns_verification_test_result
          Azure::ARM::Web::Api_2016_08_01::Models::DnsVerificationTestResult
        end
        def azure_resource_type
          Azure::ARM::Web::Api_2016_08_01::Models::AzureResourceType
        end
        def custom_host_name_dns_record_type
          Azure::ARM::Web::Api_2016_08_01::Models::CustomHostNameDnsRecordType
        end
        def host_name_type
          Azure::ARM::Web::Api_2016_08_01::Models::HostNameType
        end
        def msdeploy_log_entry_type
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployLogEntryType
        end
        def msdeploy_provisioning_state
          Azure::ARM::Web::Api_2016_08_01::Models::MSDeployProvisioningState
        end
        def my_sql_migration_type
          Azure::ARM::Web::Api_2016_08_01::Models::MySqlMigrationType
        end
        def public_certificate_location
          Azure::ARM::Web::Api_2016_08_01::Models::PublicCertificateLocation
        end
        def unauthenticated_client_action
          Azure::ARM::Web::Api_2016_08_01::Models::UnauthenticatedClientAction
        end
        def built_in_authentication_provider
          Azure::ARM::Web::Api_2016_08_01::Models::BuiltInAuthenticationProvider
        end
        def clone_ability_result
          Azure::ARM::Web::Api_2016_08_01::Models::CloneAbilityResult
        end
        def site_extension_type
          Azure::ARM::Web::Api_2016_08_01::Models::SiteExtensionType
        end
        def triggered_web_job_status
          Azure::ARM::Web::Api_2016_08_01::Models::TriggeredWebJobStatus
        end
        def ramp_up_rule
          Azure::ARM::Web::Api_2016_09_01::Models::RampUpRule
        end
        def experiments
          Azure::ARM::Web::Api_2016_09_01::Models::Experiments
        end
        def address_response
          Azure::ARM::Web::Api_2016_09_01::Models::AddressResponse
        end
        def handler_mapping
          Azure::ARM::Web::Api_2016_09_01::Models::HandlerMapping
        end
        def virtual_network_profile
          Azure::ARM::Web::Api_2016_09_01::Models::VirtualNetworkProfile
        end
        def host_name_ssl_state
          Azure::ARM::Web::Api_2016_09_01::Models::HostNameSslState
        end
        def stamp_capacity
          Azure::ARM::Web::Api_2016_09_01::Models::StampCapacity
        end
        def hosting_environment_diagnostics
          Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentDiagnostics
        end
        def name_value_pair
          Azure::ARM::Web::Api_2016_09_01::Models::NameValuePair
        end
        def ip_security_restriction
          Azure::ARM::Web::Api_2016_09_01::Models::IpSecurityRestriction
        end
        def app_service_environment_collection
          Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironmentCollection
        end
        def metric_availabilily
          Azure::ARM::Web::Api_2016_09_01::Models::MetricAvailabilily
        end
        def hosting_environment_profile
          Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentProfile
        end
        def capability
          Azure::ARM::Web::Api_2016_09_01::Models::Capability
        end
        def operation
          Azure::ARM::Web::Api_2016_09_01::Models::Operation
        end
        def usage_collection
          Azure::ARM::Web::Api_2016_09_01::Models::UsageCollection
        end
        def app_service_plan_collection
          Azure::ARM::Web::Api_2016_09_01::Models::AppServicePlanCollection
        end
        def proxy_only_resource
          Azure::ARM::Web::Api_2016_09_01::Models::ProxyOnlyResource
        end
        def auto_heal_actions
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealActions
        end
        def resource_collection
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceCollection
        end
        def status_codes_based_trigger
          Azure::ARM::Web::Api_2016_09_01::Models::StatusCodesBasedTrigger
        end
        def resource
          Azure::ARM::Web::Api_2016_09_01::Models::Resource
        end
        def auto_heal_triggers
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealTriggers
        end
        def resource_metric_name
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricName
        end
        def cloning_info
          Azure::ARM::Web::Api_2016_09_01::Models::CloningInfo
        end
        def resource_metric_property
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricProperty
        end
        def cors_settings
          Azure::ARM::Web::Api_2016_09_01::Models::CorsSettings
        end
        def resource_metric_value
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricValue
        end
        def csm_usage_quota
          Azure::ARM::Web::Api_2016_09_01::Models::CsmUsageQuota
        end
        def resource_metric
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetric
        end
        def error_entity
          Azure::ARM::Web::Api_2016_09_01::Models::ErrorEntity
        end
        def resource_metric_availability
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricAvailability
        end
        def api_definition_info
          Azure::ARM::Web::Api_2016_09_01::Models::ApiDefinitionInfo
        end
        def resource_metric_collection
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricCollection
        end
        def network_access_control_entry
          Azure::ARM::Web::Api_2016_09_01::Models::NetworkAccessControlEntry
        end
        def hybrid_connection_collection
          Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionCollection
        end
        def stamp_capacity_collection
          Azure::ARM::Web::Api_2016_09_01::Models::StampCapacityCollection
        end
        def sku_capacity
          Azure::ARM::Web::Api_2016_09_01::Models::SkuCapacity
        end
        def resource_metric_definition_collection
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricDefinitionCollection
        end
        def auto_heal_custom_action
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealCustomAction
        end
        def site_machine_key
          Azure::ARM::Web::Api_2016_09_01::Models::SiteMachineKey
        end
        def slow_requests_based_trigger
          Azure::ARM::Web::Api_2016_09_01::Models::SlowRequestsBasedTrigger
        end
        def virtual_directory
          Azure::ARM::Web::Api_2016_09_01::Models::VirtualDirectory
        end
        def conn_string_info
          Azure::ARM::Web::Api_2016_09_01::Models::ConnStringInfo
        end
        def virtual_application
          Azure::ARM::Web::Api_2016_09_01::Models::VirtualApplication
        end
        def csm_usage_quota_collection
          Azure::ARM::Web::Api_2016_09_01::Models::CsmUsageQuotaCollection
        end
        def site_limits
          Azure::ARM::Web::Api_2016_09_01::Models::SiteLimits
        end
        def worker_pool
          Azure::ARM::Web::Api_2016_09_01::Models::WorkerPool
        end
        def site_config
          Azure::ARM::Web::Api_2016_09_01::Models::SiteConfig
        end
        def sku_description
          Azure::ARM::Web::Api_2016_09_01::Models::SkuDescription
        end
        def snapshot_recovery_target
          Azure::ARM::Web::Api_2016_09_01::Models::SnapshotRecoveryTarget
        end
        def auto_heal_rules
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealRules
        end
        def worker_pool_collection
          Azure::ARM::Web::Api_2016_09_01::Models::WorkerPoolCollection
        end
        def virtual_ipmapping
          Azure::ARM::Web::Api_2016_09_01::Models::VirtualIPMapping
        end
        def slot_swap_status
          Azure::ARM::Web::Api_2016_09_01::Models::SlotSwapStatus
        end
        def requests_based_trigger
          Azure::ARM::Web::Api_2016_09_01::Models::RequestsBasedTrigger
        end
        def web_app_collection
          Azure::ARM::Web::Api_2016_09_01::Models::WebAppCollection
        end
        def app_service_environment
          Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironment
        end
        def sku_info
          Azure::ARM::Web::Api_2016_09_01::Models::SkuInfo
        end
        def localizable_string
          Azure::ARM::Web::Api_2016_09_01::Models::LocalizableString
        end
        def sku_info_collection
          Azure::ARM::Web::Api_2016_09_01::Models::SkuInfoCollection
        end
        def app_service_environment_resource
          Azure::ARM::Web::Api_2016_09_01::Models::AppServiceEnvironmentResource
        end
        def app_service_plan
          Azure::ARM::Web::Api_2016_09_01::Models::AppServicePlan
        end
        def metric_definition
          Azure::ARM::Web::Api_2016_09_01::Models::MetricDefinition
        end
        def push_settings
          Azure::ARM::Web::Api_2016_09_01::Models::PushSettings
        end
        def resource_metric_definition
          Azure::ARM::Web::Api_2016_09_01::Models::ResourceMetricDefinition
        end
        def snapshot_recovery_request
          Azure::ARM::Web::Api_2016_09_01::Models::SnapshotRecoveryRequest
        end
        def site
          Azure::ARM::Web::Api_2016_09_01::Models::Site
        end
        def usage
          Azure::ARM::Web::Api_2016_09_01::Models::Usage
        end
        def worker_pool_resource
          Azure::ARM::Web::Api_2016_09_01::Models::WorkerPoolResource
        end
        def hybrid_connection
          Azure::ARM::Web::Api_2016_09_01::Models::HybridConnection
        end
        def hybrid_connection_key
          Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionKey
        end
        def hybrid_connection_limits
          Azure::ARM::Web::Api_2016_09_01::Models::HybridConnectionLimits
        end
        def vnet_gateway
          Azure::ARM::Web::Api_2016_09_01::Models::VnetGateway
        end
        def vnet_route
          Azure::ARM::Web::Api_2016_09_01::Models::VnetRoute
        end
        def vnet_info
          Azure::ARM::Web::Api_2016_09_01::Models::VnetInfo
        end
        def provisioning_state
          Azure::ARM::Web::Api_2016_09_01::Models::ProvisioningState
        end
        def hosting_environment_status
          Azure::ARM::Web::Api_2016_09_01::Models::HostingEnvironmentStatus
        end
        def internal_load_balancing_mode
          Azure::ARM::Web::Api_2016_09_01::Models::InternalLoadBalancingMode
        end
        def compute_mode_options
          Azure::ARM::Web::Api_2016_09_01::Models::ComputeModeOptions
        end
        def worker_size_options
          Azure::ARM::Web::Api_2016_09_01::Models::WorkerSizeOptions
        end
        def access_control_entry_action
          Azure::ARM::Web::Api_2016_09_01::Models::AccessControlEntryAction
        end
        def status_options
          Azure::ARM::Web::Api_2016_09_01::Models::StatusOptions
        end
        def auto_heal_action_type
          Azure::ARM::Web::Api_2016_09_01::Models::AutoHealActionType
        end
        def connection_string_type
          Azure::ARM::Web::Api_2016_09_01::Models::ConnectionStringType
        end
        def ssl_state
          Azure::ARM::Web::Api_2016_09_01::Models::SslState
        end
        def host_type
          Azure::ARM::Web::Api_2016_09_01::Models::HostType
        end
        def operation_status
          Azure::ARM::Web::Api_2016_09_01::Models::OperationStatus
        end
        def usage_state
          Azure::ARM::Web::Api_2016_09_01::Models::UsageState
        end
        def site_availability_state
          Azure::ARM::Web::Api_2016_09_01::Models::SiteAvailabilityState
        end
        def scm_type
          Azure::ARM::Web::Api_2016_09_01::Models::ScmType
        end
        def managed_pipeline_mode
          Azure::ARM::Web::Api_2016_09_01::Models::ManagedPipelineMode
        end
        def site_load_balancing
          Azure::ARM::Web::Api_2016_09_01::Models::SiteLoadBalancing
        end
        def route_type
          Azure::ARM::Web::Api_2016_09_01::Models::RouteType
        end
      end
    end
  end
end
