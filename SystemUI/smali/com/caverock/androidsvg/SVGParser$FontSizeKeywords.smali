.class Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontSizeKeywords"
.end annotation


# static fields
.field private static final fontSizeKeywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/caverock/androidsvg/SVG$Length;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x3f31a9fc    # 0.694f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "xx-small"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x3f553f7d    # 0.833f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "x-small"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "small"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "medium"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x41666666    # 14.4f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "large"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x418a6666    # 17.3f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "x-large"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x41a5999a    # 20.7f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "xx-large"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const v3, 0x42a6a8f6    # 83.33f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "smaller"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v2, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    const/high16 v3, 0x42f00000    # 120.0f

    invoke-direct {v1, v3, v2}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    const-string/jumbo v2, "larger"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Length;
    .locals 1

    sget-object v0, Lcom/caverock/androidsvg/SVGParser$FontSizeKeywords;->fontSizeKeywords:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    return-object v0
.end method
