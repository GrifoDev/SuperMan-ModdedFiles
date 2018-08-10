.class Lcom/android/settings/SettingsActivity$20;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initProfileImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$20;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/utils/ProfileLoader;->getInstance()Lcom/samsung/android/settings/utils/ProfileLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$20;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/utils/ProfileLoader;->openProfile(Landroid/content/Context;)V

    return-void
.end method
