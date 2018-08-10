.class final synthetic Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:I

.field private final synthetic -$f4:J

.field private final synthetic -$f5:Ljava/lang/Object;

.field private final synthetic -$f6:Ljava/lang/Object;

.field private final synthetic -$f7:Ljava/lang/Object;

.field private final synthetic -$f8:Ljava/lang/Object;

.field private final synthetic -$f9:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f5:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/ShortcutService$LocalService;

    iget v1, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f0:I

    iget-object v2, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f7:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-wide v4, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f4:J

    iget-object v6, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f8:Ljava/lang/Object;

    check-cast v6, Landroid/content/ComponentName;

    iget v7, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f1:I

    iget v8, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f2:I

    iget-object v9, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f9:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f3:I

    move-object v11, p1

    check-cast v11, Lcom/android/server/pm/ShortcutPackage;

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$-com_android_server_pm_ShortcutService$LocalService_89611(ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;ILcom/android/server/pm/ShortcutPackage;)V

    return-void
.end method

.method public synthetic constructor <init>(IIIIJLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f0:I

    iput p2, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f1:I

    iput p3, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f2:I

    iput p4, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f3:I

    iput-wide p5, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f4:J

    iput-object p7, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f5:Ljava/lang/Object;

    iput-object p8, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f6:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f7:Ljava/lang/Object;

    iput-object p10, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f8:Ljava/lang/Object;

    iput-object p11, p0, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->-$f9:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$qKHXTlzWfY0UTc6aCYQ5haVEjEY$19;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
