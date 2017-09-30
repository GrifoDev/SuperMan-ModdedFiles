.class Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;->doInBackground([Landroid/content/Context;)Landroid/media/SoundPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;

.field final synthetic val$soundID:I


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask$1;->this$1:Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask;

    iput p2, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask$1;->val$soundID:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 7

    const/4 v4, 0x1

    const v2, 0x3f4ccccd    # 0.8f

    if-nez p3, :cond_0

    iget v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$soundPoolTask$1;->val$soundID:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play beep :"

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
