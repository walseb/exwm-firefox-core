;;; exwm-firefox-core.el --- Firefox hotkeys to functions -*- lexical-binding: t -*-

;; Author: Sebastian Wålinder <s.walinder@gmail.com>
;; URL: https://github.com/walseb/exwm-firefox-core
;; Version: 1.0
;; Package-Requires: ((emacs "24.4") (exwm "0.16"))
;; Keywords: extensions

;; exwm-firefox-core.el is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; exwm-firefox-core.el is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This package contains functions that execute exwm keypresses mapped in
;; firefox to the action described in the function name.
;;
;; This package is only a library so it does not contain any keybindings
;; If you don't want to do bind the functions yourself, check out other
;; packages using this library like `exwm-firefox-evil.el'
;;
;; All firefox hotkeys can be found here:
;; https://support.mozilla.org/en-US/kb/keyboard-shortcuts-perform-firefox-tasks-quickly

;;; Code:

(require 'exwm)
(require 'exwm-input)

;;; Basic navigation
;;;###autoload
(defun exwm-firefox-core-up ()
  "Move up."
  (interactive)
  (exwm-input--fake-key 'up))

;;;###autoload
(defun exwm-firefox-core-down ()
  "Move down."
  (interactive)
  (exwm-input--fake-key 'down))

;;;###autoload
(defun exwm-firefox-core-left ()
  "Move left."
  (interactive)
  (exwm-input--fake-key 'left))

;;;###autoload
(defun exwm-firefox-core-right ()
  "Move right."
  (interactive)
  (exwm-input--fake-key 'right))

;;; Top, bot
;;;###autoload
(defun exwm-firefox-core-top ()
  "Move to top of page."
  (interactive)
  (exwm-input--fake-key 'home))

;;;###autoload
(defun exwm-firefox-core-bottom ()
  "Move to bottom of page."
  (interactive)
  (exwm-input--fake-key 'end))

;;; Scroll
;;;###autoload
(defun exwm-firefox-core-page-up ()
  "Move one page up."
  (interactive)
  (exwm-input--fake-key 'prior))

;;;###autoload
(defun exwm-firefox-core-page-down ()
  "Move one page down."
  (interactive)
  (exwm-input--fake-key 'next))

;;;###autoload
(defvar exwm-firefox-core-half-page-lenght 9
  "The lenght of half a page.")

(defun exwm-firefox-core-half-page-move (up)
  "If UP is non-nil, move half page up otherwise move down."
  (dotimes (i exwm-firefox-core-half-page-lenght)
    (if up
        (exwm-input--fake-key 'up)
      (exwm-input--fake-key 'down))))

;;;###autoload
(defun exwm-firefox-core-half-page-down ()
  "Move down half a page."
  (interactive)
  (exwm-firefox-core-half-page-move nil))

;;;###autoload
(defun exwm-firefox-core-half-page-up ()
  "Move up half a page."
  (interactive)
  (exwm-firefox-core-half-page-move t))

;;; History
;;;###autoload
(defun exwm-firefox-core-history-forward ()
  "Forward in history."
  (interactive)
  (exwm-input--fake-key 'M-right))

;;;###autoload
(defun exwm-firefox-core-history-back ()
  "Back in history."
  (interactive)
  (exwm-input--fake-key 'M-left))

;;;###autoload
(defun exwm-firefox-core-history-sidebar ()
  "Forward in history."
  (interactive)
  (exwm-input--fake-key ?\C-h))

;;;###autoload
(defun exwm-firefox-core-history-menu ()
  "Forward in history."
  (interactive)
  (exwm-input--fake-key ?\C-\S-h))

;;;###autoload
(defun exwm-firefox-core-home-page ()
  "Goto home page."
  (interactive)
  (exwm-input--fake-key 'M-home))

;;; Reload
;;;###autoload
(defun exwm-firefox-core-reload ()
  "Reload page."
  (interactive)
  (exwm-input--fake-key 'f5))

;;;###autoload
(defun exwm-firefox-core-reload-override-cache ()
  "Reload page, override cache."
  (interactive)
  (exwm-input--fake-key 'C-f5))

;;; Tabs
;;;###autoload
(defun exwm-firefox-core-tab-close ()
  "Close tab."
  (interactive)
  (exwm-input--fake-key ?\C-w))

;;;###autoload
(defun exwm-firefox-core-tab-close-undo ()
  "Undo close tab."
  (interactive)
  (exwm-input--fake-key 'C-S-t))

;;;###autoload
(defun exwm-firefox-core-tab-new ()
  "New tab."
  (interactive)
  (exwm-input--fake-key ?\C-t))

;;;###autoload
(defun exwm-firefox-core-tab-next ()
  "Next tab."
  (interactive)
  (exwm-input--fake-key 'C-tab))

;;;###autoload
(defun exwm-firefox-core-tab-previous ()
  "Previous tab."
  (interactive)
  (exwm-input--fake-key 'S-C-tab))

;;;###autoload
(defun exwm-firefox-core-tab-first ()
  "First tab."
  (interactive)
  (exwm-input--fake-key ?\M-1))

;;;###autoload
(defun exwm-firefox-core-tab-last ()
  "Last tab."
  (interactive)
  (exwm-input--fake-key ?\M-9))

;;;###autoload
(defun exwm-firefox-core-tab-move-right ()
  "Move tab right."
  (interactive)
  (exwm-input--fake-key 'C-S-next))

;;;###autoload
(defun exwm-firefox-core-tab-move-left ()
  "Move tab left."
  (interactive)
  (exwm-input--fake-key 'C-S-prior))

;;;###autoload
(defun exwm-firefox-core-tab-mute ()
  "Mute tab."
  (interactive)
  (exwm-input--fake-key ?\C-m))

;;; Window
;;;###autoload
(defun exwm-firefox-core-window-new ()
  "New window."
  (interactive)
  (exwm-input--fake-key ?\C-n))

;;;###autoload
(defun exwm-firefox-core-window-new-private ()
  "New private window."
  (interactive)
  (exwm-input--fake-key ?\C-\S-p))

;;;###autoload
(defun exwm-firefox-core-window-close ()
  "Close window."
  (interactive)
  (exwm-input--fake-key 'C-S-w))

;;;###autoload
(defun exwm-firefox-core-window-close-undo ()
  "Undo close window."
  (interactive)
  (exwm-input--fake-key 'C-S-n))

;;; Find
;;;###autoload
(defun exwm-firefox-core-find ()
  "Find."
  (interactive)
  (exwm-input--fake-key ?\C-f))

;;;###autoload
(defun exwm-firefox-core-quick-find ()
  "Quick find."
  (interactive)
  (exwm-input--fake-key ?/))

;;;###autoload
(defun exwm-firefox-core-find-next ()
  "Find next."
  (interactive)
  (exwm-input--fake-key ?\C-g))

;;;###autoload
(defun exwm-firefox-core-find-previous ()
  "Find previous."
  (interactive)
  (exwm-input--fake-key ?\C-\S-g))

;;; Editing
;;;###autoload
(defun exwm-firefox-core-copy ()
  "Copy text."
  (interactive)
  (exwm-input--fake-key ?\C-c))

;;;###autoload
(defun exwm-firefox-core-cut ()
  "Cut text."
  (interactive)
  (exwm-input--fake-key ?\C-x))

;;;###autoload
(defun exwm-firefox-core-paste ()
  "Paste text."
  (interactive)
  (exwm-input--fake-key ?\C-v))

;;;###autoload
(defun exwm-firefox-core-delete ()
  "Delete text."
  (interactive)
  (exwm-input--fake-key 'deletechar))

;;;###autoload
(defun exwm-firefox-core-undo ()
  "Undo."
  (interactive)
  (exwm-input--fake-key ?\C-z))

;;;###autoload
(defun exwm-firefox-core-redo ()
  "Redo."
  (interactive)
  (exwm-input--fake-key ?\C-\S-z))

;;;###autoload
(defun exwm-firefox-core-select-all ()
  "Select whole page."
  (interactive)
  (exwm-input--fake-key ?\C-a))

(defun exwm-firefox-core-forward-word ()
  "Copy text."
  (interactive)
  (exwm-input--fake-key 'C-right))

(defun exwm-firefox-core-back-word ()
  "Copy text."
  (interactive)
  (exwm-input--fake-key 'C-left))

;;; Bookmark
;;;###autoload
(defun exwm-firefox-core-bookmark-new ()
  "Create new bookmark."
  (interactive)
  (exwm-input--fake-key ?\C-d))

;;;###autoload
(defun exwm-firefox-core-bookmark-sidebar ()
  "Open bookmark sidebar."
  (interactive)
  (exwm-input--fake-key ?\C-b))

;;;###autoload
(defun exwm-firefox-core-bookmark-menu ()
  "Open bookmark menu."
  (interactive)
  (exwm-input--fake-key ?\C-\S-o))

;;; Misc
;;;###autoload
(defun exwm-firefox-core-toggle-focus-search-bar ()
  "Toggle focus between the search bar and the page."
  (interactive)
  (exwm-input--fake-key 'f6))

;;;###autoload
(defun exwm-firefox-core-cancel ()
  "General cancel action."
  (interactive)
  (exwm-input--fake-key 'escape))

;;;###autoload
(defun exwm-firefox-core-open-file ()
  "Open file."
  (interactive)
  (exwm-input--fake-key ?\C-o))

;;;###autoload
(defun exwm-firefox-core-save-page ()
  "Save page to file."
  (interactive)
  (exwm-input--fake-key ?\C-s))

;;;###autoload
(defun exwm-firefox-core-quit ()
  "Quit firefox."
  (interactive)
  (exwm-input--fake-key ?\C-q))

;;;###autoload
(defun exwm-firefox-core-downloads-menu ()
  "Open downloads menu."
  (interactive)
  (exwm-input--fake-key ?\C-\S-y))

;;;###autoload
(defun exwm-firefox-core-reader-mode ()
  "Open current page in firefox reader-mode."
  (interactive)
  (exwm-input--fake-key ?\C-\M-r))

(provide 'exwm-firefox-core)

;;; exwm-firefox-core.el ends here
