.class public Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;
.super Ljava/lang/Object;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/io/json/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# static fields
.field public static COMPACT_EMPTY_ELEMENT:I

.field public static SPACE_AFTER_LABEL:I


# instance fields
.field private lineIndenter:[C

.field private final mode:I

.field private final nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

.field private newLine:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    sput v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    .line 318
    const/4 v0, 0x2

    sput v0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 332
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0xa

    aput-char v3, v1, v2

    sget v2, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->SPACE_AFTER_LABEL:I

    sget v3, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->COMPACT_EMPTY_ELEMENT:I

    or-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CI)V

    .line 334
    return-void

    .line 332
    nop

    :array_0
    .array-data 2
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>([C[CI)V
    .locals 1
    .param p1, "lineIndenter"    # [C
    .param p2, "newLine"    # [C
    .param p3, "mode"    # I

    .prologue
    .line 346
    new-instance v0, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/naming/NoNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;-><init>([C[CILcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 347
    return-void
.end method

.method public constructor <init>([C[CILcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "lineIndenter"    # [C
    .param p2, "newLine"    # [C
    .param p3, "mode"    # I
    .param p4, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->lineIndenter:[C

    .line 360
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->newLine:[C

    .line 361
    iput p3, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->mode:I

    .line 362
    iput-object p4, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 363
    return-void
.end method


# virtual methods
.method public getLineIndenter()[C
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->lineIndenter:[C

    return-object v0
.end method

.method public getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->nameCoder:Lcom/thoughtworks/xstream/io/naming/NameCoder;

    return-object v0
.end method

.method public getNewLine()[C
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->newLine:[C

    return-object v0
.end method

.method public mode()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/thoughtworks/xstream/io/json/JsonWriter$Format;->mode:I

    return v0
.end method
