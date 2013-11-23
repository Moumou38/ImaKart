/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// TGUI - Texus's Graphical User Interface
// Copyright (C) 2012-2013 Bruno Van de Velde (vdv_b@tgui.eu)
//
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it freely,
// subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented;
//    you must not claim that you wrote the original software.
//    If you use this software in a product, an acknowledgment
//    in the product documentation would be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such,
//    and must not be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source distribution.
//
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


#ifndef TGUI_SHARED_WIDGET_PTR_HPP
#define TGUI_SHARED_WIDGET_PTR_HPP


#include <SFML/System/String.hpp>

#include <cstddef>

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

namespace tgui
{
    class Container;
    class Gui;

    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    template <class T>
    class SharedWidgetPtr
    {
      public:

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SharedWidgetPtr();

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SharedWidgetPtr(std::nullptr_t);

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SharedWidgetPtr(Gui& gui, const sf::String& widgetName = "");

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SharedWidgetPtr(Container& container, const sf::String& widgetName = "");

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SharedWidgetPtr(const SharedWidgetPtr<T>& copy);

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        template <class U>
        SharedWidgetPtr(const SharedWidgetPtr<U>& copy);

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        ~SharedWidgetPtr();

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SharedWidgetPtr<T>& operator=(const SharedWidgetPtr<T>& copy);

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        template <class U>
        SharedWidgetPtr<T>& operator=(const SharedWidgetPtr<U>& copy);

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        void init();

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        void reset();

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        bool operator!() const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        template <typename U>
        bool operator ==(const SharedWidgetPtr<U>& right) const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        bool operator ==(const SharedWidgetPtr<T>& right) const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        template <typename U>
        bool friend operator ==(const SharedWidgetPtr<T>& left, const U* right)
        {
            return left.m_WidgetPtr == right;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        bool friend operator ==(const SharedWidgetPtr<T>& left, const T* right)
        {
            return left.m_WidgetPtr == right;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        template <typename U>
        bool friend operator ==(const U* left, const SharedWidgetPtr<T>& right)
        {
            return left == right.m_WidgetPtr;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        bool friend operator ==(const T* left, const SharedWidgetPtr<T>& right)
        {
            return left == right.m_WidgetPtr;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        template <typename U>
        bool operator !=(const SharedWidgetPtr<U>& right) const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        bool operator !=(const SharedWidgetPtr<T>& right) const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        template <typename U>
        bool friend operator !=(const SharedWidgetPtr<T>& left, const U* right)
        {
            return left.m_WidgetPtr != right;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        bool friend operator !=(const SharedWidgetPtr<T>& left, const T* right)
        {
            return left.m_WidgetPtr != right;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        template <typename U>
        bool friend operator !=(const U* left, const SharedWidgetPtr<T>& right)
        {
            return left != right.m_WidgetPtr;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        bool friend operator !=(const T* left, const SharedWidgetPtr<T>& right)
        {
            return left != right.m_WidgetPtr;
        }

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        T& operator*() const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        T* operator->() const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        T* get() const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        unsigned int* getRefCount() const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

        SharedWidgetPtr clone() const;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      private:

        T* m_WidgetPtr;
        unsigned int* m_RefCount;

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    };

    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#endif // TGUI_SHARED_WIDGET_PTR_HPP
