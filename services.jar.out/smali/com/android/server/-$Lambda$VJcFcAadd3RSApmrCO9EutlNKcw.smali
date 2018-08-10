.class final synthetic Lcom/android/server/-$Lambda$VJcFcAadd3RSApmrCO9EutlNKcw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$Lambda$VJcFcAadd3RSApmrCO9EutlNKcw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    check-cast p1, Lcom/android/server/TextServicesManagerService$SessionRequest;

    invoke-virtual {v0, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-com_android_server_TextServicesManagerService$SpellCheckerBindGroup-mthref-0(Lcom/android/server/TextServicesManagerService$SessionRequest;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$Lambda$VJcFcAadd3RSApmrCO9EutlNKcw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$VJcFcAadd3RSApmrCO9EutlNKcw;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
