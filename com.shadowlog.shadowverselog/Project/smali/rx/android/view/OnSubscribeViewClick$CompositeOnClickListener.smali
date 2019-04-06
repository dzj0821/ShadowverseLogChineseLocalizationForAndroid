.class Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/view/OnSubscribeViewClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeOnClickListener"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/view/OnSubscribeViewClick$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/android/view/OnSubscribeViewClick$1;

    .prologue
    .line 65
    invoke-direct {p0}, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 69
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v1, p0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    .line 79
    .local v0, "listener":Landroid/view/View$OnClickListener;
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 81
    .end local v0    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    return-void
.end method

.method public removeOnClickListener(Landroid/view/View$OnClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 73
    iget-object v0, p0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
