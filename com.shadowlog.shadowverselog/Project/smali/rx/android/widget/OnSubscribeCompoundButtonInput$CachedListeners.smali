.class Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeCompoundButtonInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedListeners"
.end annotation


# static fields
.field private static final sCachedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;->sCachedListeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromViewOrCreate(Landroid/widget/CompoundButton;)Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    .locals 3
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 90
    sget-object v2, Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

    .line 92
    .local v0, "cached":Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    if-eqz v0, :cond_0

    .line 101
    .end local v0    # "cached":Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    :goto_0
    return-object v0

    .line 96
    .restart local v0    # "cached":Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    :cond_0
    new-instance v1, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;-><init>(Lrx/android/widget/OnSubscribeCompoundButtonInput$1;)V

    .line 98
    .local v1, "listener":Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
    sget-object v2, Lrx/android/widget/OnSubscribeCompoundButtonInput$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v0, v1

    .line 101
    goto :goto_0
.end method
