.class Lcom/android/server/audio/FocusRequester$SecGlobalVariable;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/FocusRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecGlobalVariable"
.end annotation


# instance fields
.field private mDevice:I

.field final synthetic this$0:Lcom/android/server/audio/FocusRequester;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/FocusRequester$SecGlobalVariable;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/FocusRequester$SecGlobalVariable;->mDevice:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/FocusRequester$SecGlobalVariable;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/FocusRequester$SecGlobalVariable;->mDevice:I

    return p1
.end method

.method constructor <init>(Lcom/android/server/audio/FocusRequester;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/audio/FocusRequester$SecGlobalVariable;->this$0:Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/FocusRequester$SecGlobalVariable;->mDevice:I

    return-void
.end method
