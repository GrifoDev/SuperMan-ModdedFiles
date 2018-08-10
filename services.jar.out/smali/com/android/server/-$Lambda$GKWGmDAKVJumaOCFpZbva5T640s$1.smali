.class final synthetic Lcom/android/server/-$Lambda$GKWGmDAKVJumaOCFpZbva5T640s$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/-$Lambda$GKWGmDAKVJumaOCFpZbva5T640s$1;->-$f0:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, p1}, Lcom/android/server/SyntheticPasswordManager;->lambda$-com_android_server_SyntheticPasswordManager_18746(ILcom/android/internal/widget/ILockSettings;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$Lambda$GKWGmDAKVJumaOCFpZbva5T640s$1;->-$f0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$GKWGmDAKVJumaOCFpZbva5T640s$1;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
