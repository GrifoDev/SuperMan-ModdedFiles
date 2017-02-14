.class public Lcom/android/launcher2/CatEventDownload;
.super Ljava/lang/Object;
.source "CatEventDownload.java"


# static fields
.field public static final EVENT_IDLE_SCREEN_AVAILABLE:I = 0x5

.field public static final STK2_EVENT_ACTION:Ljava/lang/String; = "com.samsung.intent.action.stk2.event"

.field public static final STK_EVENT_ACTION:Ljava/lang/String; = "com.samsung.intent.action.stk.event"

.field private static sClass:Ljava/lang/Class;


# instance fields
.field private instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-object v2, Lcom/android/launcher2/CatEventDownload;->sClass:Ljava/lang/Class;

    :try_start_0
    const-string v1, "com.android.internal.telephony.cat.CatEventDownload"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/CatEventDownload;->sClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v2, Lcom/android/launcher2/CatEventDownload;->sClass:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/CatEventDownload;->instance:Ljava/lang/Object;

    sget-object v2, Lcom/android/launcher2/CatEventDownload;->sClass:Ljava/lang/Class;

    if-eqz v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/launcher2/CatEventDownload;->sClass:Ljava/lang/Class;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/CatEventDownload;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public putExtra(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/CatEventDownload;->instance:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/CatEventDownload;->instance:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
