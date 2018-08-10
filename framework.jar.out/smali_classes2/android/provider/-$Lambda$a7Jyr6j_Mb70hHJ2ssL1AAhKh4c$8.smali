.class final synthetic Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$8;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    iget-object v1, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$8;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_21623(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$8;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$8;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$8;->$m$0()V

    return-void
.end method
