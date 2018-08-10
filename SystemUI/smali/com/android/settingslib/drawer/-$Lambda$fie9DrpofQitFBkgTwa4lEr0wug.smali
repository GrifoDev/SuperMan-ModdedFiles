.class final synthetic Lcom/android/settingslib/drawer/-$Lambda$fie9DrpofQitFBkgTwa4lEr0wug;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/drawer/-$Lambda$fie9DrpofQitFBkgTwa4lEr0wug;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    check-cast p2, Lcom/android/settingslib/drawer/Tile;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/drawer/CategoryManager;->lambda$-com_android_settingslib_drawer_CategoryManager_12984(Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/drawer/-$Lambda$fie9DrpofQitFBkgTwa4lEr0wug;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/drawer/-$Lambda$fie9DrpofQitFBkgTwa4lEr0wug;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
