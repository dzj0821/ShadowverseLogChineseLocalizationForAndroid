.class Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;
.super Ljava/lang/Object;
.source "OnSubscribeCompoundButtonInput.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeCompoundButtonInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeOnCheckedChangeListener"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/widget/OnSubscribeCompoundButtonInput$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/android/widget/OnSubscribeCompoundButtonInput$1;

    .prologue
    .line 67
    invoke-direct {p0}, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 71
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 80
    iget-object v1, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 81
    .local v0, "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0

    .line 83
    .end local v0    # "listener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :cond_0
    return-void
.end method

.method public removeOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 75
    iget-object v0, p0, Lrx/android/widget/OnSubscribeCompoundButtonInput$CompositeOnCheckedChangeListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
