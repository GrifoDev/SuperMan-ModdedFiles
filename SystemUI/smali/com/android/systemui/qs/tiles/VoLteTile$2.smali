.class Lcom/android/systemui/qs/tiles/VoLteTile$2;
.super Ljava/lang/Object;
.source "VoLteTile.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "voicecall_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get0(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DB_VOICECALL_TYPE_SLOT1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get4(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper;->getVoiceCallType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void

    :cond_2
    const-string/jumbo v0, "voicecall_type2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get0(Lcom/android/systemui/qs/tiles/VoLteTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DB_VOICECALL_TYPE_SLOT2 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoLteTile$2;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoLteTile;->-get4(Lcom/android/systemui/qs/tiles/VoLteTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/util/SettingsHelper;->getVoiceCallType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
