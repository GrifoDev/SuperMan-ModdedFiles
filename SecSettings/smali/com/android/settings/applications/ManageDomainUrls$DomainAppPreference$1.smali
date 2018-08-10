.class Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;
.super Ljava/lang/Object;
.source "ManageDomainUrls.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;->this$1:Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;->this$1:Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    iget-object v0, v0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->this$0:Lcom/android/settings/applications/ManageDomainUrls;

    invoke-static {v0}, Lcom/android/settings/applications/ManageDomainUrls;->-get0(Lcom/android/settings/applications/ManageDomainUrls;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;->this$1:Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->-get0(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;->this$1:Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    iget-object v1, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;->this$1:Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;

    invoke-static {v1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->-get0(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
