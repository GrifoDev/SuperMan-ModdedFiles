.class public final enum Landroid/view/SurfaceEffects$AnimationMode;
.super Ljava/lang/Enum;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceEffects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/SurfaceEffects$AnimationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum LOOP:Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum ONCE_STAY_START:Landroid/view/SurfaceEffects$AnimationMode;

.field public static final enum STATIC:Landroid/view/SurfaceEffects$AnimationMode;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string/jumbo v1, "STATIC"

    invoke-direct {v0, v1, v2, v2}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->STATIC:Landroid/view/SurfaceEffects$AnimationMode;

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string/jumbo v1, "LOOP"

    invoke-direct {v0, v1, v3, v3}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->LOOP:Landroid/view/SurfaceEffects$AnimationMode;

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string/jumbo v1, "ONCE_STAY_START"

    invoke-direct {v0, v1, v4, v4}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_START:Landroid/view/SurfaceEffects$AnimationMode;

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string/jumbo v1, "ONCE_STAY_END"

    invoke-direct {v0, v1, v5, v5}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    new-instance v0, Landroid/view/SurfaceEffects$AnimationMode;

    const-string/jumbo v1, "ONCE_DESTROY"

    invoke-direct {v0, v1, v6, v6}, Landroid/view/SurfaceEffects$AnimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/SurfaceEffects$AnimationMode;

    sget-object v1, Landroid/view/SurfaceEffects$AnimationMode;->STATIC:Landroid/view/SurfaceEffects$AnimationMode;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/SurfaceEffects$AnimationMode;->LOOP:Landroid/view/SurfaceEffects$AnimationMode;

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_START:Landroid/view/SurfaceEffects$AnimationMode;

    aput-object v1, v0, v4

    sget-object v1, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    aput-object v1, v0, v5

    sget-object v1, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    aput-object v1, v0, v6

    sput-object v0, Landroid/view/SurfaceEffects$AnimationMode;->$VALUES:[Landroid/view/SurfaceEffects$AnimationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/view/SurfaceEffects$AnimationMode;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1

    const-class v0, Landroid/view/SurfaceEffects$AnimationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method

.method public static values()[Landroid/view/SurfaceEffects$AnimationMode;
    .locals 1

    sget-object v0, Landroid/view/SurfaceEffects$AnimationMode;->$VALUES:[Landroid/view/SurfaceEffects$AnimationMode;

    return-object v0
.end method
