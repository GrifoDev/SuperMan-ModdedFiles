.class Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;
.super Ljava/lang/Object;
.source "PremiumSmsAccess.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;->this$1:Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;->this$1:Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    iget-object v0, v0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->this$0:Lcom/android/settings/applications/PremiumSmsAccess;

    invoke-static {v0}, Lcom/android/settings/applications/PremiumSmsAccess;->-get0(Lcom/android/settings/applications/PremiumSmsAccess;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;->this$1:Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->-get0(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v0, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;->this$1:Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference$1;->this$1:Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;

    invoke-static {v1}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->-get0(Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/PremiumSmsAccess$PremiumSmsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
