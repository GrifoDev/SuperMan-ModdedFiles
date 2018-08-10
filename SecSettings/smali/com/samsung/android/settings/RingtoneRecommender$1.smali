.class Lcom/samsung/android/settings/RingtoneRecommender$1;
.super Ljava/lang/Object;
.source "RingtoneRecommender.java"

# interfaces
.implements Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/RingtoneRecommender;->extract(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/RingtoneRecommender;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/RingtoneRecommender;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/RingtoneRecommender$1;->this$0:Lcom/samsung/android/settings/RingtoneRecommender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(J)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender$1;->this$0:Lcom/samsung/android/settings/RingtoneRecommender;

    invoke-static {v0}, Lcom/samsung/android/settings/RingtoneRecommender;->-get0(Lcom/samsung/android/settings/RingtoneRecommender;)Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    move-result-object v0

    long-to-int v1, p1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;->onResult(II)V

    return-void
.end method

.method public onError(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/RingtoneRecommender$1;->this$0:Lcom/samsung/android/settings/RingtoneRecommender;

    invoke-static {v0}, Lcom/samsung/android/settings/RingtoneRecommender;->-get0(Lcom/samsung/android/settings/RingtoneRecommender;)Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/settings/RingtoneRecommender$OnHighlightResultListener;->onResult(II)V

    return-void
.end method
