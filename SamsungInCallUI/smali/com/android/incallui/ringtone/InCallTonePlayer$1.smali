.class Lcom/android/incallui/ringtone/InCallTonePlayer$1;
.super Ljava/lang/Object;

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

    iput-object p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$1;->this$0:Lcom/android/incallui/ringtone/InCallTonePlayer;

    iput-object p2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$1;->val$info:Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$1;->this$0:Lcom/android/incallui/ringtone/InCallTonePlayer;

    iget-object v1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$1;->val$info:Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;

    invoke-static {v0, v1}, Lcom/android/incallui/ringtone/InCallTonePlayer;->access$000(Lcom/android/incallui/ringtone/InCallTonePlayer;Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;)V

    return-void
.end method
