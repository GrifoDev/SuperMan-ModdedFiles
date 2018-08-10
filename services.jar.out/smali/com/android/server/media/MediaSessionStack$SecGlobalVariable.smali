.class Lcom/android/server/media/MediaSessionStack$SecGlobalVariable;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecGlobalVariable"
.end annotation


# instance fields
.field private mIsMultiSoundOn:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionStack;


# direct methods
.method static synthetic -get0(Lcom/android/server/media/MediaSessionStack$SecGlobalVariable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionStack$SecGlobalVariable;->mIsMultiSoundOn:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionStack$SecGlobalVariable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionStack$SecGlobalVariable;->mIsMultiSoundOn:Z

    return p1
.end method

.method constructor <init>(Lcom/android/server/media/MediaSessionStack;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack$SecGlobalVariable;->this$0:Lcom/android/server/media/MediaSessionStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionStack$SecGlobalVariable;->mIsMultiSoundOn:Z

    return-void
.end method
