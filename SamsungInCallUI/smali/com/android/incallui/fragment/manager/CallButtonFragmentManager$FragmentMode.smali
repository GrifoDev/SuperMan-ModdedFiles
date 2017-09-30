.class final enum Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/CallButtonFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

.field public static final enum CALLPLUS_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

.field public static final enum EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

.field public static final enum ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

.field public static final enum QCIFPS_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

.field public static final enum QCIF_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

.field public static final enum VCC_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

.field public static final enum VGA_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

.field public static final enum VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "VCC_VOICE"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VCC_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "CALLPLUS_VOICE"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->CALLPLUS_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "QCIF_VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "VGA_VIDEO"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "ENDCALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "QCIFPS_VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->QCIFPS_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    new-instance v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const-string v1, "EMPTY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    sget-object v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VCC_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->CALLPLUS_VOICE:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->QCIF_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->VGA_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->ENDCALL:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->QCIFPS_VIDEO:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->EMPTY:Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
    .locals 1

    const-class v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;
    .locals 1

    sget-object v0, Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->$VALUES:[Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    invoke-virtual {v0}, [Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/fragment/manager/CallButtonFragmentManager$FragmentMode;

    return-object v0
.end method
