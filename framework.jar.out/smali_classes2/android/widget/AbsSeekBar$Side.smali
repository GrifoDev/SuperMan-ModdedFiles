.class final enum Landroid/widget/AbsSeekBar$Side;
.super Ljava/lang/Enum;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/AbsSeekBar$Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/AbsSeekBar$Side;

.field public static final enum LEFT:Landroid/widget/AbsSeekBar$Side;

.field public static final enum NONE:Landroid/widget/AbsSeekBar$Side;

.field public static final enum RIGHT:Landroid/widget/AbsSeekBar$Side;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/AbsSeekBar$Side;

    const-string/jumbo v1, "RIGHT"

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsSeekBar$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    new-instance v0, Landroid/widget/AbsSeekBar$Side;

    const-string/jumbo v1, "LEFT"

    invoke-direct {v0, v1, v3}, Landroid/widget/AbsSeekBar$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    new-instance v0, Landroid/widget/AbsSeekBar$Side;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v4}, Landroid/widget/AbsSeekBar$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/AbsSeekBar$Side;

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->RIGHT:Landroid/widget/AbsSeekBar$Side;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->LEFT:Landroid/widget/AbsSeekBar$Side;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/AbsSeekBar$Side;->NONE:Landroid/widget/AbsSeekBar$Side;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/AbsSeekBar$Side;->$VALUES:[Landroid/widget/AbsSeekBar$Side;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/AbsSeekBar$Side;
    .locals 1

    const-class v0, Landroid/widget/AbsSeekBar$Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsSeekBar$Side;

    return-object v0
.end method

.method public static values()[Landroid/widget/AbsSeekBar$Side;
    .locals 1

    sget-object v0, Landroid/widget/AbsSeekBar$Side;->$VALUES:[Landroid/widget/AbsSeekBar$Side;

    return-object v0
.end method
