.class synthetic Lcom/android/incallui/fragment/manager/AgifFragmentManager$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/manager/AgifFragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$incallui$fragment$manager$AgifFragmentManager$FragmentMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;->values()[Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/incallui/fragment/manager/AgifFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$AgifFragmentManager$FragmentMode:[I

    :try_start_0
    sget-object v0, Lcom/android/incallui/fragment/manager/AgifFragmentManager$1;->$SwitchMap$com$android$incallui$fragment$manager$AgifFragmentManager$FragmentMode:[I

    sget-object v1, Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;->DEFAULT:Lcom/android/incallui/fragment/manager/AgifFragmentManager$FragmentMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
