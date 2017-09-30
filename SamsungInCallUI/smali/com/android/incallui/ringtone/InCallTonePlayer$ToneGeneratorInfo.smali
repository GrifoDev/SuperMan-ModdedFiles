.class Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ringtone/InCallTonePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ToneGeneratorInfo"
.end annotation


# instance fields
.field public final stream:I

.field public final tone:I

.field public final toneLengthMillis:I

.field public final volume:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->tone:I

    iput p2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->volume:I

    iput p3, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->toneLengthMillis:I

    iput p4, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->stream:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/a/a/c;->a(Ljava/lang/Object;)Lcom/google/a/a/c$a;

    move-result-object v0

    const-string v1, "tone"

    iget v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->tone:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/c$a;->a(Ljava/lang/String;I)Lcom/google/a/a/c$a;

    move-result-object v0

    const-string v1, "volume"

    iget v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->volume:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/c$a;->a(Ljava/lang/String;I)Lcom/google/a/a/c$a;

    move-result-object v0

    const-string v1, "toneLengthMillis"

    iget v2, p0, Lcom/android/incallui/ringtone/InCallTonePlayer$ToneGeneratorInfo;->toneLengthMillis:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/c$a;->a(Ljava/lang/String;I)Lcom/google/a/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/c$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
