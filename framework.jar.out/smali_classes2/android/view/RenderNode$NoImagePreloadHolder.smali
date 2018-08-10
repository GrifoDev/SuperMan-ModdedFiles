.class Landroid/view/RenderNode$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "RenderNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    const-class v1, Landroid/view/RenderNode;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/view/RenderNode;->-wrap0()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v0, Landroid/view/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
