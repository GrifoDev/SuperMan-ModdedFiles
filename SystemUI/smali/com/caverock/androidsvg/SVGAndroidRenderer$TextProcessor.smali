.class abstract Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TextProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method private constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    return-void
.end method


# virtual methods
.method public doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract processText(Ljava/lang/String;)V
.end method
