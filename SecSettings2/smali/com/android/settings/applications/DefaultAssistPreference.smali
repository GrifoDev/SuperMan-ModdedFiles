.class public Lcom/android/settings/applications/DefaultAssistPreference;
.super Lcom/android/settings/AppListPreferenceWithSettings;
.source "DefaultAssistPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DefaultAssistPreference$Info;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAvailableAssistants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/DefaultAssistPreference$Info;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/DefaultAssistPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreferenceWithSettings;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setShowItemNone(Z)V

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const v0, 0x7f0b03ad

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setResDescription(I)V

    return-void
.end method

.method private addAssistActivities()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.ASSIST"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    new-instance v5, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/settings/applications/DefaultAssistPreference$Info;-><init>(Landroid/content/ComponentName;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAssistServices()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.service.voice.VoiceInteractionService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x80

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v4, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v4, v1, v5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    new-instance v6, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v4}, Lcom/android/settings/applications/DefaultAssistPreference$Info;-><init>(Landroid/content/ComponentName;Landroid/service/voice/VoiceInteractionServiceInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/DefaultAssistPreference$Info;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    iget-object v2, v1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getDefaultRecognizer()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.RecognitionService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/settings/applications/DefaultAssistPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to resolve default voice recognition service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setAssistActivity(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant"

    iget-object v2, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method private setAssistNone()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_interaction_service"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "voice_recognition_service"

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getDefaultRecognizer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b1a26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    return-void
.end method

.method private setAssistService(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v6}, Landroid/service/voice/VoiceInteractionServiceInfo;->getRecognitionService()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assistant"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_interaction_service"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_recognition_service"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/DefaultAssistPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->voiceInteractionServiceInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    invoke-virtual {v4}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/DefaultAssistPreference;->setSettingsComponent(Landroid/content/ComponentName;)V

    return-void

    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentAssist()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method protected loggingSettingsIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0xc9

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findAssistantByPackageName(Ljava/lang/String;)Lcom/android/settings/applications/DefaultAssistPreference$Info;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistNone()V

    return v4

    :cond_0
    sget-boolean v1, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "DAAU"

    invoke-static {v1, v2, v3, p1}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultAssistPreference$Info;->isVoiceInteractionService()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistService(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V

    :goto_0
    return v4

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/applications/DefaultAssistPreference;->setAssistActivity(Lcom/android/settings/applications/DefaultAssistPreference$Info;)V

    goto :goto_0
.end method

.method public refreshAssistApps()V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->addAssistServices()V

    invoke-direct {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->addAssistActivities()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/DefaultAssistPreference;->mAvailableAssistants:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/DefaultAssistPreference$Info;

    iget-object v4, v4, Lcom/android/settings/applications/DefaultAssistPreference$Info;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    :goto_2
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/DefaultAssistPreference;->setPackageNames([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
