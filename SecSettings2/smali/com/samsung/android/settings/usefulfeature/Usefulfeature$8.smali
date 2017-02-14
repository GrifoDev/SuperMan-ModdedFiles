.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get2(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get2(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "spam_filter_enable"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b18ae

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0b18af

    goto :goto_0
.end method
