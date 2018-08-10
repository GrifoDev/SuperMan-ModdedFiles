.class Lcom/android/server/audio/AudioService$AudioModeDump;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioModeDump"
.end annotation


# instance fields
.field mCallerDump:Ljava/lang/String;

.field mModeDump:I

.field mPidDump:I

.field mTimeDump:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->mModeDump:I

    iput p3, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->mPidDump:I

    iput-object p4, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->mCallerDump:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->mTimeDump:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCaller()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->mCallerDump:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->mModeDump:I

    return v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->mPidDump:I

    return v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$AudioModeDump;->mTimeDump:Ljava/lang/String;

    return-object v0
.end method
