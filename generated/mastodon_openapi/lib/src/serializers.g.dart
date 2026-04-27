// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add($BaseStatus.serializer)
      ..add(Account.serializer)
      ..add(AccountRole.serializer)
      ..add(AccountWarning.serializer)
      ..add(AccountWarningActionEnum.serializer)
      ..add(AdminAccount.serializer)
      ..add(AdminCanonicalEmailBlock.serializer)
      ..add(AdminCohort.serializer)
      ..add(AdminCohortFrequencyEnum.serializer)
      ..add(AdminDimension.serializer)
      ..add(AdminDimensionData.serializer)
      ..add(AdminDomainAllow.serializer)
      ..add(AdminDomainBlock.serializer)
      ..add(AdminDomainBlockSeverityEnum.serializer)
      ..add(AdminEmailDomainBlock.serializer)
      ..add(AdminEmailDomainBlockHistory.serializer)
      ..add(AdminIp.serializer)
      ..add(AdminIpBlock.serializer)
      ..add(AdminIpBlockSeverityEnum.serializer)
      ..add(AdminMeasure.serializer)
      ..add(AdminMeasureData.serializer)
      ..add(AdminReport.serializer)
      ..add(AdminTag.serializer)
      ..add(Announcement.serializer)
      ..add(AnnouncementAccount.serializer)
      ..add(AnnouncementStatus.serializer)
      ..add(Appeal.serializer)
      ..add(AppealStateEnum.serializer)
      ..add(Application.serializer)
      ..add(AsyncRefresh.serializer)
      ..add(AsyncRefreshResponse.serializer)
      ..add(AsyncRefreshStatusEnum.serializer)
      ..add(CohortData.serializer)
      ..add(Context.serializer)
      ..add(Conversation.serializer)
      ..add(CountResponse.serializer)
      ..add(CreateAccountRequest.serializer)
      ..add(CreateAppRequest.serializer)
      ..add(CreateDomainBlockRequest.serializer)
      ..add(CreateEmailConfirmationsRequest.serializer)
      ..add(CreateFeaturedTagRequest.serializer)
      ..add(CreateFilterRequest.serializer)
      ..add(CreateFilterV2Request.serializer)
      ..add(CreateFilterV2RequestKeywordsAttributesInner.serializer)
      ..add(CreateListRequest.serializer)
      ..add(CreateMarkerRequest.serializer)
      ..add(CreateMarkerRequestHome.serializer)
      ..add(CreateMarkerRequestNotifications.serializer)
      ..add(CreatePushSubscriptionRequest.serializer)
      ..add(CreatePushSubscriptionRequestData.serializer)
      ..add(CreatePushSubscriptionRequestDataAlerts.serializer)
      ..add(CreatePushSubscriptionRequestSubscription.serializer)
      ..add(CreatePushSubscriptionRequestSubscriptionKeys.serializer)
      ..add(CreateReportRequest.serializer)
      ..add(CreateStatus200Response.serializer)
      ..add(CreateStatusRequest.serializer)
      ..add(CredentialAccount.serializer)
      ..add(CredentialAccountSource.serializer)
      ..add(CredentialAccountSourceQuotePolicyEnum.serializer)
      ..add(CredentialApplication.serializer)
      ..add(CustomEmoji.serializer)
      ..add(DeleteDomainBlocksRequest.serializer)
      ..add(DeleteListAccountsRequest.serializer)
      ..add(DiscoverOauthServerConfigurationResponse.serializer)
      ..add(DomainBlock.serializer)
      ..add(DomainBlockSeverityEnum.serializer)
      ..add(Error.serializer)
      ..add(ExtendedDescription.serializer)
      ..add(FamiliarFollowers.serializer)
      ..add(FeaturedTag.serializer)
      ..add(Field.serializer)
      ..add(Filter.serializer)
      ..add(FilterContextEnum.serializer)
      ..add(FilterFilterActionEnum.serializer)
      ..add(FilterKeyword.serializer)
      ..add(FilterResult.serializer)
      ..add(FilterStatus.serializer)
      ..add(GetInstanceActivity200ResponseInner.serializer)
      ..add(GroupedNotificationsResults.serializer)
      ..add(IdentityProof.serializer)
      ..add(Instance.serializer)
      ..add(InstanceApiVersions.serializer)
      ..add(InstanceConfiguration.serializer)
      ..add(InstanceConfigurationAccounts.serializer)
      ..add(InstanceConfigurationMediaAttachments.serializer)
      ..add(InstanceConfigurationPolls.serializer)
      ..add(InstanceConfigurationStatuses.serializer)
      ..add(InstanceConfigurationTimelinesAccess.serializer)
      ..add(InstanceConfigurationTimelinesAccessHashtagFeeds.serializer)
      ..add(
          InstanceConfigurationTimelinesAccessHashtagFeedsLocalEnum.serializer)
      ..add(
          InstanceConfigurationTimelinesAccessHashtagFeedsRemoteEnum.serializer)
      ..add(InstanceConfigurationTimelinesAccessLiveFeeds.serializer)
      ..add(InstanceConfigurationTimelinesAccessLiveFeedsLocalEnum.serializer)
      ..add(InstanceConfigurationTimelinesAccessLiveFeedsRemoteEnum.serializer)
      ..add(InstanceConfigurationTimelinesAccessTrendingLinkFeeds.serializer)
      ..add(InstanceConfigurationTimelinesAccessTrendingLinkFeedsLocalEnum
          .serializer)
      ..add(InstanceConfigurationTimelinesAccessTrendingLinkFeedsRemoteEnum
          .serializer)
      ..add(InstanceConfigurationTranslation.serializer)
      ..add(InstanceConfigurationUrls.serializer)
      ..add(InstanceContact.serializer)
      ..add(InstanceIcon.serializer)
      ..add(InstanceRegistrations.serializer)
      ..add(InstanceThumbnail.serializer)
      ..add(InstanceThumbnailVersions.serializer)
      ..add(InstanceUsage.serializer)
      ..add(InstanceUsageUsers.serializer)
      ..add(ListRepliesPolicyEnum.serializer)
      ..add(Marker.serializer)
      ..add(MediaAttachment.serializer)
      ..add(MediaAttachmentMeta.serializer)
      ..add(MediaAttachmentMetaFocus.serializer)
      ..add(MediaAttachmentTypeEnum.serializer)
      ..add(MediaStatus.serializer)
      ..add(MergedResponse.serializer)
      ..add(MetaDetails.serializer)
      ..add(ModelList.serializer)
      ..add(MutedAccount.serializer)
      ..add(Notification.serializer)
      ..add(NotificationGroup.serializer)
      ..add(NotificationPolicy.serializer)
      ..add(NotificationPolicySummary.serializer)
      ..add(NotificationRequest.serializer)
      ..add(NotificationTypeEnum.serializer)
      ..add(OAuthScope.serializer)
      ..add(OEmbedResponse.serializer)
      ..add(PartialAccountWithAvatar.serializer)
      ..add(PatchAccountsUpdateCredentialsRequest.serializer)
      ..add(PatchAccountsUpdateCredentialsRequestSource.serializer)
      ..add(PatchProfileRequest.serializer)
      ..add(Poll.serializer)
      ..add(PollOption.serializer)
      ..add(PollStatus.serializer)
      ..add(PostAccountFollowRequest.serializer)
      ..add(PostAccountMuteRequest.serializer)
      ..add(PostAccountNoteRequest.serializer)
      ..add(PostFilterKeywordsV2Request.serializer)
      ..add(PostFilterStatusesV2Request.serializer)
      ..add(PostListAccountsRequest.serializer)
      ..add(PostOauthRevokeRequest.serializer)
      ..add(PostOauthTokenRequest.serializer)
      ..add(PostPollVotesRequest.serializer)
      ..add(PostStatusReblogRequest.serializer)
      ..add(PostStatusTranslateRequest.serializer)
      ..add(Preferences.serializer)
      ..add(PreferencesReadingExpandMediaEnum.serializer)
      ..add(PreviewCard.serializer)
      ..add(PreviewCardAuthor.serializer)
      ..add(PrivacyPolicy.serializer)
      ..add(Profile.serializer)
      ..add(PutPushSubscriptionRequest.serializer)
      ..add(PutPushSubscriptionRequestData.serializer)
      ..add(PutPushSubscriptionRequestDataAlerts.serializer)
      ..add(Quote.serializer)
      ..add(QuoteApproval.serializer)
      ..add(QuoteApprovalAutomaticEnum.serializer)
      ..add(QuoteApprovalCurrentUserEnum.serializer)
      ..add(QuoteStateEnum.serializer)
      ..add(Reaction.serializer)
      ..add(Relationship.serializer)
      ..add(RelationshipSeveranceEvent.serializer)
      ..add(RelationshipSeveranceEventTypeEnum.serializer)
      ..add(Report.serializer)
      ..add(ReportCategoryEnum.serializer)
      ..add(Role.serializer)
      ..add(Rule.serializer)
      ..add(ScheduledStatus.serializer)
      ..add(ScheduledStatusParams.serializer)
      ..add(ScheduledStatusParamsPoll.serializer)
      ..add(Search.serializer)
      ..add(ShallowQuote.serializer)
      ..add(Status.serializer)
      ..add(StatusApplication.serializer)
      ..add(StatusEdit.serializer)
      ..add(StatusEditPoll.serializer)
      ..add(StatusEditPollOptionsInner.serializer)
      ..add(StatusMention.serializer)
      ..add(StatusQuote.serializer)
      ..add(StatusSource.serializer)
      ..add(StatusTag.serializer)
      ..add(StatusVisibilityEnum.serializer)
      ..add(Suggestion.serializer)
      ..add(SuggestionSourcesEnum.serializer)
      ..add(Tag.serializer)
      ..add(TagHistory.serializer)
      ..add(TermsOfService.serializer)
      ..add(TextStatus.serializer)
      ..add(Token.serializer)
      ..add(Translation.serializer)
      ..add(TranslationAttachment.serializer)
      ..add(TranslationPoll.serializer)
      ..add(TranslationPollOption.serializer)
      ..add(TrendsLink.serializer)
      ..add(TrendsLinkHistoryInner.serializer)
      ..add(TrendsLinkTypeEnum.serializer)
      ..add(UpdateFilterRequest.serializer)
      ..add(UpdateFilterV2Request.serializer)
      ..add(UpdateFilterV2RequestKeywordsAttributesInner.serializer)
      ..add(UpdateScheduledStatusRequest.serializer)
      ..add(UpdateStatusInteractionPolicyRequest.serializer)
      ..add(UpdateStatusRequest.serializer)
      ..add(UpdateStatusRequestPoll.serializer)
      ..add(V1Filter.serializer)
      ..add(V1Instance.serializer)
      ..add(V1InstanceConfiguration.serializer)
      ..add(V1InstanceConfigurationAccounts.serializer)
      ..add(V1InstanceConfigurationMediaAttachments.serializer)
      ..add(V1InstanceStats.serializer)
      ..add(V1InstanceUrls.serializer)
      ..add(V1NotificationPolicy.serializer)
      ..add(ValidationError.serializer)
      ..add(ValidationErrorDetailsValueInner.serializer)
      ..add(WebPushSubscription.serializer)
      ..add(WebPushSubscriptionAlerts.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Account)]),
          () => ListBuilder<Account>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Account)]),
          () => ListBuilder<Account>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Account)]),
          () => ListBuilder<Account>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(NotificationGroup)]),
          () => ListBuilder<NotificationGroup>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Status)]),
          () => ListBuilder<Status>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(PartialAccountWithAvatar)]),
          () => ListBuilder<PartialAccountWithAvatar>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Account)]),
          () => ListBuilder<Account>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Tag)]),
          () => ListBuilder<Tag>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Status)]),
          () => ListBuilder<Status>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AdminDimensionData)]),
          () => ListBuilder<AdminDimensionData>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AdminEmailDomainBlockHistory)]),
          () => ListBuilder<AdminEmailDomainBlockHistory>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AdminIp)]),
          () => ListBuilder<AdminIp>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AdminMeasureData)]),
          () => ListBuilder<AdminMeasureData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CohortData)]),
          () => ListBuilder<CohortData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomEmoji)]),
          () => ListBuilder<CustomEmoji>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AnnouncementAccount)]),
          () => ListBuilder<AnnouncementAccount>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Reaction)]),
          () => ListBuilder<Reaction>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AnnouncementStatus)]),
          () => ListBuilder<AnnouncementStatus>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StatusTag)]),
          () => ListBuilder<StatusTag>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomEmoji)]),
          () => ListBuilder<CustomEmoji>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AccountRole)]),
          () => ListBuilder<AccountRole>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomEmoji)]),
          () => ListBuilder<CustomEmoji>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AccountRole)]),
          () => ListBuilder<AccountRole>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomEmoji)]),
          () => ListBuilder<CustomEmoji>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AccountRole)]),
          () => ListBuilder<AccountRole>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomEmoji)]),
          () => ListBuilder<CustomEmoji>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MediaAttachment)]),
          () => ListBuilder<MediaAttachment>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomEmoji)]),
          () => ListBuilder<CustomEmoji>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MediaAttachment)]),
          () => ListBuilder<MediaAttachment>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StatusMention)]),
          () => ListBuilder<StatusMention>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(StatusTag)]),
          () => ListBuilder<StatusTag>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterResult)]),
          () => ListBuilder<FilterResult>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CustomEmoji)]),
          () => ListBuilder<CustomEmoji>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PollOption)]),
          () => ListBuilder<PollOption>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterContextEnum)]),
          () => ListBuilder<FilterContextEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterContextEnum)]),
          () => ListBuilder<FilterContextEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterContextEnum)]),
          () => ListBuilder<FilterContextEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterContextEnum)]),
          () => ListBuilder<FilterContextEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(CreateFilterV2RequestKeywordsAttributesInner)
          ]),
          () => ListBuilder<CreateFilterV2RequestKeywordsAttributesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterContextEnum)]),
          () => ListBuilder<FilterContextEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterKeyword)]),
          () => ListBuilder<FilterKeyword>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterStatus)]),
          () => ListBuilder<FilterStatus>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FilterContextEnum)]),
          () => ListBuilder<FilterContextEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(UpdateFilterV2RequestKeywordsAttributesInner)
          ]),
          () => ListBuilder<UpdateFilterV2RequestKeywordsAttributesInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MediaAttachment)]),
          () => ListBuilder<MediaAttachment>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PreviewCardAuthor)]),
          () => ListBuilder<PreviewCardAuthor>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(QuoteApprovalAutomaticEnum)]),
          () => ListBuilder<QuoteApprovalAutomaticEnum>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(QuoteApprovalAutomaticEnum)]),
          () => ListBuilder<QuoteApprovalAutomaticEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rule)]),
          () => ListBuilder<Rule>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Status)]),
          () => ListBuilder<Status>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Status)]),
          () => ListBuilder<Status>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Status)]),
          () => ListBuilder<Status>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(StatusEditPollOptionsInner)]),
          () => ListBuilder<StatusEditPollOptionsInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OAuthScope)]),
          () => ListBuilder<OAuthScope>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OAuthScope)]),
          () => ListBuilder<OAuthScope>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rule)]),
          () => ListBuilder<Rule>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Rule)]),
          () => ListBuilder<Rule>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(InstanceIcon)]),
          () => ListBuilder<InstanceIcon>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OAuthScope)]),
          () => ListBuilder<OAuthScope>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(SuggestionSourcesEnum)]),
          () => ListBuilder<SuggestionSourcesEnum>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(TagHistory)]),
          () => ListBuilder<TagHistory>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TranslationAttachment)]),
          () => ListBuilder<TranslationAttachment>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TranslationPollOption)]),
          () => ListBuilder<TranslationPollOption>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TrendsLinkHistoryInner)]),
          () => ListBuilder<TrendsLinkHistoryInner>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(PreviewCardAuthor)]),
          () => ListBuilder<PreviewCardAuthor>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList,
                const [const FullType(ValidationErrorDetailsValueInner)])
          ]),
          () => MapBuilder<String,
              BuiltList<ValidationErrorDetailsValueInner>>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
