.class final enum Lcom/android/server/display/WFDUibcManager$UIBC_Mode;
.super Ljava/lang/Enum;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UIBC_Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/WFDUibcManager$UIBC_Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

.field public static final enum FORCE_VALUE:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

.field public static final enum FULL_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

.field public static final enum NORMAL:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

.field public static final enum PORTRAIT_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

.field public static final enum PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->NORMAL:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    const-string/jumbo v1, "FORCE_VALUE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    const-string/jumbo v1, "FULL_SCREEN"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FULL_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    const-string/jumbo v1, "PRESENTATION"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    const-string/jumbo v1, "PORTRAIT_SCREEN"

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->PORTRAIT_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->NORMAL:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->FULL_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->PORTRAIT_SCREEN:Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->$VALUES:[Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/WFDUibcManager$UIBC_Mode;
    .locals 1

    const-class v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/WFDUibcManager$UIBC_Mode;
    .locals 1

    sget-object v0, Lcom/android/server/display/WFDUibcManager$UIBC_Mode;->$VALUES:[Lcom/android/server/display/WFDUibcManager$UIBC_Mode;

    return-object v0
.end method
