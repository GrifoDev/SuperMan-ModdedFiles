.class final synthetic Lcom/samsung/android/friends/shell/-$Lambda$wEefITqlFfKEaJfT5XXYT6IDNj0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/friends/shell/-$Lambda$wEefITqlFfKEaJfT5XXYT6IDNj0;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast p1, Lcom/samsung/android/friends/cmdsvc/CmdSvc;

    invoke-static {v0, p1}, Lcom/samsung/android/friends/shell/ShellCommandImpl;->lambda$-com_samsung_android_friends_shell_ShellCommandImpl_1209(Ljava/util/List;Lcom/samsung/android/friends/cmdsvc/CmdSvc;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/shell/-$Lambda$wEefITqlFfKEaJfT5XXYT6IDNj0;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/shell/-$Lambda$wEefITqlFfKEaJfT5XXYT6IDNj0;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
