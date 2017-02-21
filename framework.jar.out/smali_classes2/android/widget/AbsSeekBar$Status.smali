.class final enum Landroid/widget/AbsSeekBar$Status;
.super Ljava/lang/Enum;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/AbsSeekBar$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/AbsSeekBar$Status;

.field public static final enum STOP:Landroid/widget/AbsSeekBar$Status;

.field public static final enum TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

.field public static final enum TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/AbsSeekBar$Status;

    const-string/jumbo v1, "STOP"

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsSeekBar$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    new-instance v0, Landroid/widget/AbsSeekBar$Status;

    const-string/jumbo v1, "TAIL_OPEN"

    invoke-direct {v0, v1, v3}, Landroid/widget/AbsSeekBar$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    new-instance v0, Landroid/widget/AbsSeekBar$Status;

    const-string/jumbo v1, "TAIL_CLOSE"

    invoke-direct {v0, v1, v4}, Landroid/widget/AbsSeekBar$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/AbsSeekBar$Status;

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->STOP:Landroid/widget/AbsSeekBar$Status;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_OPEN:Landroid/widget/AbsSeekBar$Status;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/AbsSeekBar$Status;->TAIL_CLOSE:Landroid/widget/AbsSeekBar$Status;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/AbsSeekBar$Status;->$VALUES:[Landroid/widget/AbsSeekBar$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/AbsSeekBar$Status;
    .locals 1

    const-class v0, Landroid/widget/AbsSeekBar$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsSeekBar$Status;

    return-object v0
.end method

.method public static values()[Landroid/widget/AbsSeekBar$Status;
    .locals 1

    sget-object v0, Landroid/widget/AbsSeekBar$Status;->$VALUES:[Landroid/widget/AbsSeekBar$Status;

    return-object v0
.end method
