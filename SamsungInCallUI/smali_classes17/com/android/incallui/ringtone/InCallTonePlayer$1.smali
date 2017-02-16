.class Lcom/android/incallui/ringtone/InCallTonePlayer$1;
.super Ljava/lang/Object;
.source "InCallTonePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ringtone/InCallTonePlayer;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ringtone/InCallTonePlayer;

.field final synthetic val$info:Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;


# direct methods
.method constructor <init>(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/ringtone/InCallTonePlayer;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$1;->this$0:Lcom/android/incallui/ringtone/InCallTonePlayer;

    iput-object p2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$1;->val$info:Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$1;->this$0:Lcom/android/incallui/ringtone/InCallTonePlayer;

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$1;->val$info:Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    # invokes: Lcom/android/incallui/ringtone/InCallTonePlayer;->playOnBackgroundThread(Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V
    invoke-static {v0, v1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->access$000(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V

    .line 85
    return-void
.end method
