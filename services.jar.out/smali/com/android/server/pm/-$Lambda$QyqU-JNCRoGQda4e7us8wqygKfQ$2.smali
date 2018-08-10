.class final synthetic Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Z


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$2;->-$f0:Z

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutUser;->lambda$-com_android_server_pm_ShortcutUser_11623(ZLcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$2;->-$f0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$QyqU-JNCRoGQda4e7us8wqygKfQ$2;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
