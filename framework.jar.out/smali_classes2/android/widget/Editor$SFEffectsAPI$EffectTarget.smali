.class public final enum Landroid/widget/Editor$SFEffectsAPI$EffectTarget;
.super Ljava/lang/Enum;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SFEffectsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/Editor$SFEffectsAPI$EffectTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

.field public static final enum BEHIND:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

.field public static final enum SELF:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

.field public static final enum SELF_AND_BEHIND:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    const-string/jumbo v1, "SELF"

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->SELF:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    const-string/jumbo v1, "BEHIND"

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->BEHIND:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    const-string/jumbo v1, "SELF_AND_BEHIND"

    invoke-direct {v0, v1, v4, v4}, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->SELF_AND_BEHIND:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->SELF:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->BEHIND:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->SELF_AND_BEHIND:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->$VALUES:[Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/Editor$SFEffectsAPI$EffectTarget;
    .locals 1

    const-class v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    return-object v0
.end method

.method public static values()[Landroid/widget/Editor$SFEffectsAPI$EffectTarget;
    .locals 1

    sget-object v0, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->$VALUES:[Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    return-object v0
.end method
