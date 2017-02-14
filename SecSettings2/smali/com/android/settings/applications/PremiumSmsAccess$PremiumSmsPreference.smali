.class Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;
.super Lcom/samsung/android/settings/DropDownPreference;
.source "PremiumSmsAccess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/PremiumSmsAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PremiumSmsPreference"
.end annotation


# instance fields
.field private final mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field final synthetic this$0:Lcom/android/settings/applications/PremiumSmsAccess;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/applications/PremiumSmsAccess;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->this$0:Lcom/android/settings/applications/PremiumSmsAccess;

    invoke-direct {p0, p3}, Lcom/samsung/android/settings/DropDownPreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, p3}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0c009c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setEntries(I)V

    new-array v0, v5, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->getCurrentValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setValue(Ljava/lang/String;)V

    const-string/jumbo v0, "%s"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getCurrentValue()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;

    iget v0, v0, Lcom/android/settings/applications/AppStateSmsPremBridge$SmsState;->smsState:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;-><init>(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/DropDownPreference;->onBindView(Landroid/view/View;)V

    return-void
.end method
