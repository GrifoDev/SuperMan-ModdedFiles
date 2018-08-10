.class Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;
.super Ljava/lang/Object;
.source "SamsungAdId.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "SamsungAdId"

    const-string/jumbo v1, "on ad-id reset Clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-virtual {v1}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0270

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SamsungAdId$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SamsungAdId;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SamsungAdId;->-wrap0(Lcom/samsung/android/settings/deviceinfo/SamsungAdId;)V

    const/4 v0, 0x1

    return v0
.end method
