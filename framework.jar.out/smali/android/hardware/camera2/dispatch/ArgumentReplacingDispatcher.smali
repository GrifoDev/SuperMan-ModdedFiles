.class public Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;
.super Ljava/lang/Object;
.source "ArgumentReplacingDispatcher.java"

# interfaces
.implements Landroid/hardware/camera2/dispatch/Dispatchable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "TArg:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/dispatch/Dispatchable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mArgumentIndex:I

.field private final mReplaceWith:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTArg;"
        }
    .end annotation
.end field

.field private final mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/dispatch/Dispatchable;ILjava/lang/Object;)V
    .locals 1
    .param p2, "argumentIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/dispatch/Dispatchable",
            "<TT;>;ITTArg;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;, "Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher<TT;TTArg;>;"
    .local p1, "target":Landroid/hardware/camera2/dispatch/Dispatchable;, "Landroid/hardware/camera2/dispatch/Dispatchable<TT;>;"
    .local p3, "replaceWith":Ljava/lang/Object;, "TTArg;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string/jumbo v0, "target must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/dispatch/Dispatchable;

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    .line 62
    const-string/jumbo v0, "argumentIndex must not be negative"

    .line 61
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    .line 63
    const-string/jumbo v0, "replaceWith must not be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mReplaceWith:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private static arrayCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 78
    array-length v1, p0

    .line 79
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/Object;

    .line 80
    .local v2, "newArray":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 81
    aget-object v3, p0, v0

    aput-object v3, v2, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-object v2
.end method


# virtual methods
.method public dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;, "Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher<TT;TTArg;>;"
    array-length v0, p2

    iget v1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    if-le v0, v1, :cond_0

    .line 70
    invoke-static {p2}, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->arrayCopy([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 71
    iget v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mArgumentIndex:I

    iget-object v1, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mReplaceWith:Ljava/lang/Object;

    aput-object v1, p2, v0

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;->mTarget:Landroid/hardware/camera2/dispatch/Dispatchable;

    invoke-interface {v0, p1, p2}, Landroid/hardware/camera2/dispatch/Dispatchable;->dispatch(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
