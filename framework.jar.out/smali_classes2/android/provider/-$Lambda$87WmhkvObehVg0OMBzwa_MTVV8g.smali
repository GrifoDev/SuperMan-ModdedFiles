.class final synthetic Landroid/provider/-$Lambda$87WmhkvObehVg0OMBzwa_MTVV8g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Landroid/provider/-$Lambda$87WmhkvObehVg0OMBzwa_MTVV8g;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->lambda$-android_provider_Settings$NameValueCache_71670()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/-$Lambda$87WmhkvObehVg0OMBzwa_MTVV8g;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/provider/-$Lambda$87WmhkvObehVg0OMBzwa_MTVV8g;->$m$0()V

    return-void
.end method
