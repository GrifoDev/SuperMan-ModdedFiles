.class public abstract Lcom/android/keyguard/wallpaper/theme/SpriteModifier;
.super Ljava/lang/Object;
.source "SpriteModifier.java"


# instance fields
.field private mSprite:Lcom/android/keyguard/wallpaper/theme/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/android/keyguard/wallpaper/theme/Sprite;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/SpriteModifier;->mSprite:Lcom/android/keyguard/wallpaper/theme/Sprite;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/wallpaper/theme/SpriteModifier;->onStart(Lcom/android/keyguard/wallpaper/theme/Sprite;)V

    return-void
.end method

.method public abstract onStart(Lcom/android/keyguard/wallpaper/theme/Sprite;)V
.end method

.method public abstract onUpdate(Lcom/android/keyguard/wallpaper/theme/Sprite;)V
.end method
