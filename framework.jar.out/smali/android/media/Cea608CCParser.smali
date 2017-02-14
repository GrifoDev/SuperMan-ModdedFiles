.class Landroid/media/Cea608CCParser;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea608CCParser$CCData;,
        Landroid/media/Cea608CCParser$CCLineBuilder;,
        Landroid/media/Cea608CCParser$CCMemory;,
        Landroid/media/Cea608CCParser$DisplayListener;,
        Landroid/media/Cea608CCParser$MutableBackgroundColorSpan;,
        Landroid/media/Cea608CCParser$PAC;,
        Landroid/media/Cea608CCParser$StyleCode;
    }
.end annotation


# static fields
.field private static final AOF:I = 0x22

.field private static final AON:I = 0x23

.field private static final BS:I = 0x21

.field private static final CR:I = 0x2d

.field private static final DEBUG:Z

.field private static final DER:I = 0x24

.field private static final EDM:I = 0x2c

.field private static final ENM:I = 0x2e

.field private static final EOC:I = 0x2f

.field private static final FON:I = 0x28

.field private static final INVALID:I = -0x1

.field public static final MAX_COLS:I = 0x20

.field public static final MAX_ROWS:I = 0xf

.field private static final MODE_PAINT_ON:I = 0x1

.field private static final MODE_POP_ON:I = 0x3

.field private static final MODE_ROLL_UP:I = 0x2

.field private static final MODE_TEXT:I = 0x4

.field private static final MODE_UNKNOWN:I = 0x0

.field private static final RCL:I = 0x20

.field private static final RDC:I = 0x29

.field private static final RTD:I = 0x2b

.field private static final RU2:I = 0x25

.field private static final RU3:I = 0x26

.field private static final RU4:I = 0x27

.field private static final TAG:Ljava/lang/String; = "Cea608CCParser"

.field private static final TR:I = 0x2a

.field private static final TS:C = '\u00a0'


# instance fields
.field private mDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private final mListener:Landroid/media/Cea608CCParser$DisplayListener;

.field private mMode:I

.field private mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

.field private mPrevCtrlCode:I

.field private mRollUpSize:I

.field private mTextMem:Landroid/media/Cea608CCParser$CCMemory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "Cea608CCParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/Cea608CCParser;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/media/Cea608CCParser$DisplayListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    new-instance v0, Landroid/media/Cea608CCParser$CCMemory;

    invoke-direct {v0}, Landroid/media/Cea608CCParser$CCMemory;-><init>()V

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    iput-object p1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    return-void
.end method

.method private getMemory()Landroid/media/Cea608CCParser$CCMemory;
    .locals 3

    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "Cea608CCParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecoginized mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/Cea608CCParser;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    iget v1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    if-ne v1, v0, :cond_0

    iput v2, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    return v4

    :cond_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput v2, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    const/4 v1, 0x0

    return v1

    :pswitch_1
    iput v5, p0, Landroid/media/Cea608CCParser;->mMode:I

    :cond_1
    :goto_0
    iput v0, p0, Landroid/media/Cea608CCParser;->mPrevCtrlCode:I

    return v4

    :pswitch_2
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->der()V

    goto :goto_0

    :pswitch_4
    add-int/lit8 v1, v0, -0x23

    iput v1, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    :cond_2
    iput v3, p0, Landroid/media/Cea608CCParser;->mMode:I

    goto :goto_0

    :pswitch_5
    const-string/jumbo v1, "Cea608CCParser"

    const-string/jumbo v2, "Flash On"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    iput v4, p0, Landroid/media/Cea608CCParser;->mMode:I

    goto :goto_0

    :pswitch_7
    iput v6, p0, Landroid/media/Cea608CCParser;->mMode:I

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mTextMem:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    goto :goto_0

    :pswitch_8
    iput v6, p0, Landroid/media/Cea608CCParser;->mMode:I

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    goto :goto_0

    :pswitch_a
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    iget v2, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    invoke-virtual {v1, v2}, Landroid/media/Cea608CCParser$CCMemory;->rollUp(I)V

    :goto_1
    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->cr()V

    goto :goto_1

    :pswitch_b
    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$CCMemory;->erase()V

    goto :goto_0

    :pswitch_c
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->swapMemory()V

    iput v5, p0, Landroid/media/Cea608CCParser;->mMode:I

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->-wrap0(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/Cea608CCParser$CCMemory;->bs()V

    :cond_1
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/Cea608CCParser$CCMemory;->writeText(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->updateDisplay()V

    :cond_3
    return v2
.end method

.method private handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->writeMidRowCode(Landroid/media/Cea608CCParser$StyleCode;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/media/Cea608CCParser;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/Cea608CCParser$PAC;->getRow()I

    move-result v2

    iget v3, p0, Landroid/media/Cea608CCParser;->mRollUpSize:I

    invoke-static {v1, v2, v3}, Landroid/media/Cea608CCParser$CCMemory;->-wrap0(Landroid/media/Cea608CCParser$CCMemory;II)V

    :cond_0
    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->writePAC(Landroid/media/Cea608CCParser$PAC;)V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroid/media/Cea608CCParser;->getMemory()Landroid/media/Cea608CCParser$CCMemory;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/Cea608CCParser$CCMemory;->tab(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1
.end method

.method private swapMemory()V
    .locals 2

    iget-object v0, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    iput-object v1, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    iput-object v0, p0, Landroid/media/Cea608CCParser;->mNonDisplay:Landroid/media/Cea608CCParser$CCMemory;

    return-void
.end method

.method private updateDisplay()V
    .locals 3

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    invoke-interface {v1}, Landroid/media/Cea608CCParser$DisplayListener;->getCaptionStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iget-object v1, p0, Landroid/media/Cea608CCParser;->mListener:Landroid/media/Cea608CCParser$DisplayListener;

    iget-object v2, p0, Landroid/media/Cea608CCParser;->mDisplay:Landroid/media/Cea608CCParser$CCMemory;

    invoke-virtual {v2, v0}, Landroid/media/Cea608CCParser$CCMemory;->getStyledText(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)[Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/Cea608CCParser$DisplayListener;->onDisplayChanged([Landroid/text/SpannableStringBuilder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public parse([B)V
    .locals 4

    invoke-static {p1}, Landroid/media/Cea608CCParser$CCData;->fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    sget-boolean v2, Landroid/media/Cea608CCParser;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Cea608CCParser"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/media/Cea608CCParser$CCData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleCtrlCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleTabOffsets(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handlePACCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-nez v2, :cond_1

    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleMidRowCode(Landroid/media/Cea608CCParser$CCData;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/media/Cea608CCParser;->handleDisplayableChars(Landroid/media/Cea608CCParser$CCData;)Z

    goto :goto_1

    :cond_3
    return-void
.end method
