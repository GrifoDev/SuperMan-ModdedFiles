.class public Lcom/android/contacts/common/interactions/TouchPointManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/android/contacts/common/interactions/TouchPointManager;


# instance fields
.field private b:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/interactions/TouchPointManager;

    invoke-direct {v0}, Lcom/android/contacts/common/interactions/TouchPointManager;-><init>()V

    sput-object v0, Lcom/android/contacts/common/interactions/TouchPointManager;->a:Lcom/android/contacts/common/interactions/TouchPointManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->b:Landroid/graphics/Point;

    return-void
.end method

.method public static a()Lcom/android/contacts/common/interactions/TouchPointManager;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/interactions/TouchPointManager;->a:Lcom/android/contacts/common/interactions/TouchPointManager;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/interactions/TouchPointManager;->b:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
